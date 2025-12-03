@interface PUScrubberView
- (BOOL)_allowExitFromContentScrubbing;
- (BOOL)_isContentScrubbing;
- (BOOL)_isDrivingPlayheadProgress;
- (BOOL)_isLibraryScrubbing;
- (BOOL)layout:(id)layout isItemAtAtIndexPathSelected:(id)selected;
- (BOOL)layout:(id)layout shouldShowTimeIndicatorForExpandedItemAtIndexPath:(id)path;
- (BOOL)playbackTimeIndicatorTileViewControllerCanFlashIndicator:(id)indicator;
- (CGPoint)_decelerationTargetOffset;
- (CGPoint)tilingView:(id)view initialVisibleOriginWithLayout:(id)layout;
- (PUScrubberView)initWithFrame:(CGRect)frame;
- (PUScrubberViewDelegate)delegate;
- (double)_expandedItemWidth;
- (double)_lengthForDuration:(double)duration;
- (double)_playheadProgressForIrisAssetReference:(id)reference;
- (float)layout:(id)layout aspectRatioForItemAtIndexPath:(id)path;
- (id)_currentAssetsDataSource;
- (id)_expandedAssetReference;
- (id)_newScrubberLayoutWithDataSource:(id)source;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)tilingView:(id)view tileControllerWithIndexPath:(id)path kind:(id)kind dataSource:(id)source;
- (id)tilingView:(id)view tileTransitionCoordinatorForChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame duration:(double)duration;
- (id)tilingView:(id)view tileTransitionCoordinatorForLayoutInvalidationContext:(id)context;
- (id)tilingView:(id)view tileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withContext:(id)context;
- (void)_disableLayoutTransitionsForDuration:(double)duration;
- (void)_endScrubbing;
- (void)_handleTap:(id)tap;
- (void)_handleTapOnBrowsingIrisPlayer:(id)player;
- (void)_handleTapOnBrowsingVideoPlayer:(id)player;
- (void)_handleUserScrollWillBegin:(BOOL)begin;
- (void)_reenableLayoutTransitions;
- (void)_setDecelerationTargetIndexPath:(id)path;
- (void)_setHandlingScrollViewWillEndDragging:(BOOL)dragging;
- (void)_setScrubbingAwayFromContentEdge:(BOOL)edge;
- (void)_setSnapToExpandedItem:(BOOL)item;
- (void)_setTilingView:(id)view;
- (void)_setUseLoupe:(BOOL)loupe;
- (void)_setVideoScrubberController:(id)controller;
- (void)_updateLoupeEffectIfNeeded;
- (void)_updateScrollPositionAnimated:(BOOL)animated;
- (void)_updateScrubberLayoutIfNeeded;
- (void)_updateScrubbingAwayFromContentEdgeBeganDragging:(BOOL)dragging;
- (void)_updateSnapToExpandedItemIfNeeded;
- (void)_updateTilingViewIfNeeded;
- (void)cancelDeceleration;
- (void)dealloc;
- (void)endPreviewing;
- (void)handleTouchGesture:(id)gesture;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setBrowsingSession:(id)session;
- (void)setDelegate:(id)delegate;
- (void)setSelectionManager:(id)manager;
- (void)setType:(int64_t)type;
- (void)setUseThinLoupe:(BOOL)loupe;
- (void)updateIfNeeded;
- (void)videoScrubberController:(id)controller desiredSeekTime:(id *)time;
- (void)videoScrubberControllerDidUpdate:(id)update;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUScrubberView

- (CGPoint)_decelerationTargetOffset
{
  x = self->__decelerationTargetOffset.x;
  y = self->__decelerationTargetOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUScrubberViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  [(PUScrubberView *)self topOutset];
  if (y < v8 && self->_delegateFlags.respondsToShouldIgnoreHitTestWithEvent && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v10 = [WeakRetained scrubberView:self shouldIgnoreHitTest:eventCopy withEvent:{x, y}], WeakRetained, (v10 & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PUScrubberView;
    v11 = [(PUScrubberView *)&v13 hitTest:eventCopy withEvent:x, y];
  }

  return v11;
}

- (BOOL)playbackTimeIndicatorTileViewControllerCanFlashIndicator:(id)indicator
{
  presentationLayoutInfo = [indicator presentationLayoutInfo];
  _tilingView = [(PUScrubberView *)self _tilingView];
  indexPath = [presentationLayoutInfo indexPath];
  dataSourceIdentifier = [presentationLayoutInfo dataSourceIdentifier];
  v8 = [_tilingView presentedTileControllerWithIndexPath:indexPath kind:@"PUTileKindItemContent" dataSourceIdentifier:dataSourceIdentifier];

  presentationLayoutInfo2 = [v8 presentationLayoutInfo];

  if (presentationLayoutInfo2)
  {
    [presentationLayoutInfo2 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    coordinateSystem = [presentationLayoutInfo2 coordinateSystem];
    contentCoordinateSystem = [_tilingView contentCoordinateSystem];
    v20 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v11, v13);
    v22 = v21;

    [(PUScrubberView *)self convertRect:_tilingView fromView:v20, v22, v15, v17];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(PUScrubberView *)self bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v42.origin.x = v24;
    v42.origin.y = v26;
    v42.size.width = v28;
    v42.size.height = v30;
    MaxX = CGRectGetMaxX(v42);
    v43.origin.x = v32;
    v43.origin.y = v34;
    v43.size.width = v36;
    v43.size.height = v38;
    v40 = MaxX > CGRectGetMaxX(v43);
  }

  else
  {
    v40 = 1;
  }

  return v40;
}

- (void)videoScrubberController:(id)controller desiredSeekTime:(id *)time
{
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];

  _expandedItemType = [(PUScrubberView *)self _expandedItemType];
  if (_expandedItemType == 2)
  {
    currentAssetReference = [viewModel currentAssetReference];
    v14 = [viewModel assetViewModelForAssetReference:currentAssetReference];
    videoPlayer = [v14 videoPlayer];

    v15 = *&time->var0;
    var3 = time->var3;
    [videoPlayer setDesiredSeekTime:&v15];
    goto LABEL_5;
  }

  if (_expandedItemType == 3)
  {
    currentAssetReference2 = [viewModel currentAssetReference];
    v10 = [viewModel assetViewModelForAssetReference:currentAssetReference2];
    irisPlayer = [v10 irisPlayer];

    [(PUScrubberView *)self _invalidateScrubberLayout];
    [(PUScrubberView *)self updateIfNeeded];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__PUScrubberView_videoScrubberController_desiredSeekTime___block_invoke;
    v17[3] = &unk_1E7B7F720;
    v18 = irisPlayer;
    v19 = *&time->var0;
    v20 = time->var3;
    videoPlayer = irisPlayer;
    [videoPlayer performChanges:v17];

LABEL_5:
  }
}

uint64_t __58__PUScrubberView_videoScrubberController_desiredSeekTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  return [v1 setScrubbingPhotoTime:&v3 completion:0];
}

- (void)videoScrubberControllerDidUpdate:(id)update
{
  updateCopy = update;
  _tilingView = [(PUScrubberView *)self _tilingView];
  if (_tilingView)
  {
    _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
    [_scrubberLayout expandedItemWidth];
    v7 = v6;
    [updateCopy length];
    v9 = v8;

    if (v7 != v9)
    {
      [(PUScrubberView *)self _invalidateScrubberLayout];
    }

    _scrubberLayout2 = [(PUScrubberView *)self _scrubberLayout];
    _videoScrubberController = [(PUScrubberView *)self _videoScrubberController];
    if (_videoScrubberController)
    {
      v12 = _videoScrubberController;
      expandedItemIndexPath = [_scrubberLayout2 expandedItemIndexPath];

      if (expandedItemIndexPath)
      {
        [updateCopy playheadProgress];
        v15 = v14;
        _expandedAssetReference = [(PUScrubberView *)self _expandedAssetReference];
        asset = [_expandedAssetReference asset];
        canPlayPhotoIris = [asset canPlayPhotoIris];

        if (canPlayPhotoIris)
        {
          [(PUScrubberView *)self _playheadProgressForIrisAssetReference:_expandedAssetReference];
          v15 = v19;
        }

        _scrubberLayout3 = [(PUScrubberView *)self _scrubberLayout];
        [_scrubberLayout3 setExpandedItemPlayheadProgress:v15];

        if (![(PUScrubberView *)self _isDrivingPlayheadProgress]&& [(PUScrubberView *)self _expandedItemType]== 2)
        {
          _contentOffsetRoundingEnabled = [_tilingView _contentOffsetRoundingEnabled];
          [_tilingView _setContentOffsetRoundingEnabled:1];
          [(PUScrubberView *)self _updateScrollPositionAnimated:0];
          [_tilingView _setContentOffsetRoundingEnabled:_contentOffsetRoundingEnabled];
        }
      }
    }
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSelectionManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1426 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v12 = observableCopy;
    _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
    if ([_scrubberLayout shouldHighlightSelectedItems])
    {
      [_scrubberLayout invalidateSelectedItems];
    }

    observableCopy = v12;
  }
}

- (void)_reenableLayoutTransitions
{
  v3 = [(PUScrubberView *)self _layoutTransitionsDisabledCount]- 1;
  [(PUScrubberView *)self _setLayoutTransitionsDisabledCount:v3];
  if (!v3)
  {
    [(PUScrubberView *)self _invalidateScrubberLayout];

    [(PUScrubberView *)self updateIfNeeded];
  }
}

- (void)_disableLayoutTransitionsForDuration:(double)duration
{
  [(PUScrubberView *)self _setLayoutTransitionsDisabledCount:[(PUScrubberView *)self _layoutTransitionsDisabledCount]+ 1];
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, (duration * 1000000000.0));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PUScrubberView__disableLayoutTransitionsForDuration___block_invoke;
  v6[3] = &unk_1E7B80638;
  objc_copyWeak(&v7, &location);
  dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __55__PUScrubberView__disableLayoutTransitionsForDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reenableLayoutTransitions];
}

- (void)_updateScrollPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(PUScrubberView *)self updateIfNeeded];
  _tilingView = [(PUScrubberView *)self _tilingView];
  [_tilingView layoutIfNeeded];
  _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
  if ([(PUScrubberView *)self _isContentScrubbing])
  {
    expandedItemIndexPath = [_scrubberLayout expandedItemIndexPath];
    [_scrubberLayout visibleRectForScrollingToItemAtIndexPath:expandedItemIndexPath scrollPosition:2];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    browsingSession = [(PUScrubberView *)self browsingSession];
    expandedItemIndexPath = [browsingSession viewModel];

    currentAssetReference = [expandedItemIndexPath currentAssetReference];
    indexPath = [currentAssetReference indexPath];
    if (indexPath)
    {
      [expandedItemIndexPath currentAssetTransitionProgress];
      [_scrubberLayout visibleRectForScrollingToItemAtIndexPath:indexPath transitionProgress:?];
      v8 = v18;
      v10 = v19;
      v12 = v20;
      v14 = v21;
    }

    else
    {
      v8 = *MEMORY[0x1E695F040];
      v10 = *(MEMORY[0x1E695F040] + 8);
      v12 = *(MEMORY[0x1E695F040] + 16);
      v14 = *(MEMORY[0x1E695F040] + 24);
    }
  }

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  if (!CGRectIsInfinite(v27))
  {
    coordinateSystem = [_scrubberLayout coordinateSystem];
    contentCoordinateSystem = [_tilingView contentCoordinateSystem];
    v24 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v8, v10);

    [_tilingView setContentOffset:animatedCopy animated:{v24, 0.0}];
    if (animatedCopy)
    {
      [_tilingView px_cancelScrollGesture];
    }
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  v40 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  changeCopy = change;
  _tilingView = [(PUScrubberView *)self _tilingView];
  if (_tilingView)
  {
    if ([changeCopy chromeVisibilityDidChange])
    {
      if ([modelCopy isChromeVisible])
      {
        if ([(PUScrubberView *)self _areLayoutTransitionsDisabled])
        {
          [(PUScrubberView *)self _invalidateScrubberLayout];
        }
      }

      else
      {
        [(PUScrubberView *)self _disableLayoutTransitionsForDuration:0.5];
      }
    }

    currentAssetReference = [modelCopy currentAssetReference];
    v33 = a2;
    v34 = currentAssetReference;
    if (currentAssetReference)
    {
      v11 = currentAssetReference;
      assetViewModelChangesByAssetReference = [changeCopy assetViewModelChangesByAssetReference];
      v13 = [assetViewModelChangesByAssetReference objectForKeyedSubscript:v11];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v36;
        v32 = _tilingView;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v35 + 1) + 8 * i);
            videoPlayerChange = [v20 videoPlayerChange];
            if ([videoPlayerChange avPlayerDidChange] & 1) != 0 || (objc_msgSend(videoPlayerChange, "isActivatedDidChange"))
            {
              [(PUScrubberView *)self _invalidateScrubberLayout];

              _tilingView = v32;
              goto LABEL_30;
            }

            if (([videoPlayerChange desiredPlayStateDidChange] & 1) != 0 || objc_msgSend(videoPlayerChange, "playStateDidChange"))
            {
              [(PUScrubberView *)self _invalidateScrubberLayout];
            }

            if ([v20 isDisplayingSearchQueryLabelChanged])
            {
              [(PUScrubberView *)self _invalidateScrubberLayout];
            }

            irisPlayerChange = [v20 irisPlayerChange];
            if ([irisPlayerChange activatedDidChange])
            {
              [(PUScrubberView *)self _invalidateScrubberLayoutEnsureTransition];
              [(PUScrubberView *)self _invalidateLoupeEffect];
            }

            if ([irisPlayerChange scrubbingPhotoTimeDidChange])
            {
              [(PUScrubberView *)self _invalidateScrubberLayout];
            }

            v17 |= [irisPlayerChange playingDidChange];
          }

          v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
          _tilingView = v32;
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v17 = 0;
      }

LABEL_30:
    }

    else
    {
      v17 = 0;
    }

    if (([changeCopy currentAssetDidChange] & 1) != 0 || (objc_msgSend(changeCopy, "currentAssetTransitionProgressDidChange") & 1) != 0 || objc_msgSend(changeCopy, "transitionDriverIdentifierDidChange"))
    {
      transitionDriverIdentifier = [modelCopy transitionDriverIdentifier];
      if ([transitionDriverIdentifier isEqualToString:self->_transitionLayoutIdentifier])
      {

LABEL_37:
        [(PUScrubberView *)self _invalidateLoupeEffect];
        [(PUScrubberView *)self _invalidateScrubberLayoutEnsureTransition];
        v26 = 1;
        goto LABEL_39;
      }

      transitionDriverIdentifier2 = [modelCopy transitionDriverIdentifier];
      v25 = [transitionDriverIdentifier2 isEqualToString:@"PUBrowsingViewModelTransitionDriverIdentifierLivePhotoOverlay"];

      if (v25)
      {
        goto LABEL_37;
      }
    }

    v26 = 0;
LABEL_39:
    if ([changeCopy transitionDriverIdentifierDidChange])
    {
      [(PUScrubberView *)self _invalidateScrubberLayout];
    }

    if (([changeCopy currentAssetDidChange] & 1) != 0 || (objc_msgSend(changeCopy, "isScrubbingDidChange") & 1) != 0 || objc_msgSend(changeCopy, "isInSelectionModeDidChange"))
    {
      [(PUScrubberView *)self _invalidateScrubberLayout];
    }

    assetsDataSource = [modelCopy assetsDataSource];
    if (([changeCopy assetsDataSourceDidChange] | v17))
    {
      [(NSMutableDictionary *)self->_aspectRatioByIndexPath removeAllObjects];
      [(PUScrubberView *)self _setDecelerationTargetIndexPath:0];
      [(PUScrubberView *)self _invalidateScrubberLayoutEnsureTransition];
    }

    [(PUScrubberView *)self updateIfNeeded];
    _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
    dataSource = [_scrubberLayout dataSource];
    v30 = [assetsDataSource isEqual:dataSource];

    if (v30)
    {
      if ((v26 & 1) == 0)
      {
LABEL_49:
        if (!-[PUScrubberView _isLibraryScrubbing](self, "_isLibraryScrubbing") && !-[PUScrubberView _isContentScrubbing](self, "_isContentScrubbing") && (([changeCopy currentAssetDidChange] & 1) != 0 || (objc_msgSend(changeCopy, "currentAssetTransitionProgressDidChange") & 1) != 0 || objc_msgSend(changeCopy, "transitionDriverIdentifierDidChange")))
        {
          [(PUScrubberView *)self _setDecelerationTargetIndexPath:0];
          [(PUScrubberView *)self _updateScrollPositionAnimated:0];
        }
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v33 object:self file:@"PUScrubberView.m" lineNumber:1345 description:@"Session and layout data sources are out of sync."];

      if ((v26 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }
}

- (void)handleTouchGesture:(id)gesture
{
  state = [gesture state];
  if ((state - 3) >= 2)
  {
    if (state == 1)
    {

      [(PUScrubberView *)self _handleUserScrollWillBegin:1];
    }
  }

  else
  {
    _tilingView = [(PUScrubberView *)self _tilingView];
    if (([_tilingView isDecelerating] & 1) == 0 && (objc_msgSend(_tilingView, "isDragging") & 1) == 0)
    {
      [(PUScrubberView *)self _endScrubbing];
    }
  }
}

- (void)_endScrubbing
{
  _tilingView = [(PUScrubberView *)self _tilingView];
  if (([_tilingView isTracking] & 1) == 0 && (objc_msgSend(_tilingView, "isDecelerating") & 1) == 0 && (objc_msgSend(_tilingView, "isDragging") & 1) == 0)
  {
    [(PUScrubberView *)self _setScrollViewSettled:1];
  }

  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __31__PUScrubberView__endScrubbing__block_invoke;
  v16[3] = &unk_1E7B80DD0;
  v6 = viewModel;
  v17 = v6;
  [v6 performChanges:v16];
  if ([(PUScrubberView *)self _expandedItemType]== 3 || [(PUScrubberView *)self _expandedItemType]== 1)
  {
    currentAssetReference = [v6 currentAssetReference];
    v8 = [v6 assetViewModelForAssetReference:currentAssetReference];
    irisPlayer = [v8 irisPlayer];

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __31__PUScrubberView__endScrubbing__block_invoke_2;
    v14 = &unk_1E7B80DD0;
    v15 = irisPlayer;
    v10 = irisPlayer;
    [v10 performChanges:&v11];
    [(PUScrubberView *)self _updateScrollPositionAnimated:1, v11, v12, v13, v14];
  }
}

uint64_t __31__PUScrubberView__endScrubbing__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  return [v1 setScrubbingPhotoTime:&v3 completion:0];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(PUScrubberView *)self _endScrubbing];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1174 description:{@"Invalid parameter not satisfying: %@", @"[tilingView isKindOfClass:[PUTilingView class]]"}];
  }

  _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
  expandedItemIndexPath = [_scrubberLayout expandedItemIndexPath];

  if (!expandedItemIndexPath)
  {
    [(PUScrubberView *)self _setHandlingScrollViewWillEndDragging:1];
    [(PUScrubberView *)self updateIfNeeded];
    x = offset->x;
    y = offset->y;
    [_scrubberLayout focusPoint];
    v13 = v12;
    v15 = v14;
    coordinateSystem = [_scrubberLayout coordinateSystem];
    contentCoordinateSystem = [draggingCopy contentCoordinateSystem];
    v18 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem, contentCoordinateSystem, v13, v15);
    v20 = v19;

    [draggingCopy contentOffset];
    v23 = x + v18 - v21;
    v24 = y + v20 - v22;
    contentCoordinateSystem2 = [draggingCopy contentCoordinateSystem];
    coordinateSystem2 = [_scrubberLayout coordinateSystem];
    v27 = PUConvertPointFromCoordinateSystemToCoordinateSystem(contentCoordinateSystem2, coordinateSystem2, v23, v24);
    v29 = v28;

    v30 = [_scrubberLayout indexPathOfItemClosestToPoint:{v27, v29}];
    if (v30)
    {
      _scrubberLayout2 = [(PUScrubberView *)self _scrubberLayout];
      [_scrubberLayout2 visibleRectForScrollingToItemAtIndexPath:v30 transitionProgress:0.0];
      v33 = v32;
      v35 = v34;
      coordinateSystem3 = [_scrubberLayout2 coordinateSystem];
      contentCoordinateSystem3 = [draggingCopy contentCoordinateSystem];
      v38 = PUConvertPointFromCoordinateSystemToCoordinateSystem(coordinateSystem3, contentCoordinateSystem3, v33, v35);
      v40 = v39;
    }

    else
    {
      v38 = x;
      v40 = y;
    }

    if ((PUPointIsEqualToPointWithTolerance() & 1) == 0)
    {
      offset->x = v38;
      offset->y = v40;
    }

    [(PUScrubberView *)self _setDecelerationTargetIndexPath:v30];
    [(PUScrubberView *)self _setDecelerationTargetOffset:v38, v40];
    [draggingCopy contentOffset];
    [(PUScrubberView *)self _setDecelerationDistance:hypot(v38 - v41, v40 - v42)];
    [(PUScrubberView *)self _setHandlingScrollViewWillEndDragging:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  _tilingView = [(PUScrubberView *)self _tilingView];

  if (_tilingView == draggingCopy)
  {

    [(PUScrubberView *)self _handleUserScrollWillBegin:0];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  _tilingView = [(PUScrubberView *)self _tilingView];

  v6 = scrollCopy;
  if (_tilingView == scrollCopy)
  {
    [(PUScrubberView *)self _invalidateLoupeEffect];
    if ([scrollCopy isDragging] & 1) != 0 || (objc_msgSend(scrollCopy, "isDecelerating"))
    {
      isTracking = 1;
    }

    else
    {
      isTracking = [scrollCopy isTracking];
    }

    pu_isPerformingScrollTest = [scrollCopy pu_isPerformingScrollTest];
    v6 = scrollCopy;
    if ((pu_isPerformingScrollTest & 1) != 0 || isTracking && ([(PUScrubberView *)self _isContentScrubbing]|| (pu_isPerformingScrollTest = [(PUScrubberView *)self _isLibraryScrubbing], v6 = scrollCopy, pu_isPerformingScrollTest)))
    {
      pu_isPerformingScrollTest = [(PUScrubberView *)self _handleUserScrollWillBegin:0];
      v6 = scrollCopy;
    }
  }

  MEMORY[0x1EEE66BB8](pu_isPerformingScrollTest, v6);
}

- (CGPoint)tilingView:(id)view initialVisibleOriginWithLayout:(id)layout
{
  layoutCopy = layout;
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];

  _currentAssetsDataSource = [(PUScrubberView *)self _currentAssetsDataSource];
  dataSource = [layoutCopy dataSource];
  v11 = [dataSource isEqual:_currentAssetsDataSource];

  if ((v11 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1123 description:{@"Invalid parameter not satisfying: %@", @"[[layout dataSource] isEqual:assetsDataSource]"}];
  }

  currentAssetReference = [viewModel currentAssetReference];
  firstItemIndexPath = [_currentAssetsDataSource indexPathForAssetReference:currentAssetReference];
  if (!firstItemIndexPath && _currentAssetsDataSource)
  {
    if ([_currentAssetsDataSource isEmpty])
    {
LABEL_10:
      v14 = *MEMORY[0x1E695F058];
      v15 = *(MEMORY[0x1E695F058] + 8);
      goto LABEL_13;
    }

    firstItemIndexPath = [_currentAssetsDataSource firstItemIndexPath];
  }

  if (!firstItemIndexPath)
  {
    goto LABEL_10;
  }

  if ([(PUScrubberView *)self _isLibraryScrubbing])
  {
    [(PUScrubberView *)self _scrubbingTransitionProgress];
  }

  else
  {
    [viewModel currentAssetTransitionProgress];
  }

  [layoutCopy visibleRectForScrollingToItemAtIndexPath:firstItemIndexPath transitionProgress:?];
  v14 = v16;
  v15 = v17;

LABEL_13:
  v18 = v14;
  v19 = v15;
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)tilingView:(id)view tileTransitionCoordinatorForLayoutInvalidationContext:(id)context
{
  viewCopy = view;
  contextCopy = context;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [contextCopy invalidatedExpandedItem])
  {
    v8 = [(PUTileTransitionCoordinator *)PUDefaultFrameChangeTileTransitionCoordinator defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:0 tilingView:viewCopy];
  }

  else
  {
    v8 = 0;
  }

  v9 = +[PUScrubberSettings sharedInstance];
  if ([v9 useSmoothingAnimation])
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  _expandedAssetReference = [(PUScrubberView *)self _expandedAssetReference];
  if (_expandedAssetReference)
  {
    v12 = _expandedAssetReference;
    v8 = 0;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  _useSmoothingTransitionCoordinator = [(PUScrubberView *)self _useSmoothingTransitionCoordinator];

  if (_useSmoothingTransitionCoordinator)
  {
    v8 = [(PUTileTransitionCoordinator *)PUDefaultFrameChangeTileTransitionCoordinator defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:0 tilingView:viewCopy];
    v14 = MEMORY[0x1E696AD98];
    v9 = +[PUScrubberSettings sharedInstance];
    [v9 smoothingAnimationDuration];
    v12 = [v14 numberWithDouble:?];
    [v8 setAnimationDuration:v12];
    goto LABEL_14;
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (id)tilingView:(id)view tileTransitionCoordinatorForChangeFromFrame:(CGRect)frame toFrame:(CGRect)toFrame duration:(double)duration
{
  if (duration <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:0 tilingView:view, duration, frame.origin.y, frame.size.width, frame.size.height, toFrame.origin.x, toFrame.origin.y, toFrame.size.width, toFrame.size.height];
  }

  return v6;
}

- (id)tilingView:(id)view tileTransitionCoordinatorForTransitionFromLayout:(id)layout toLayout:(id)toLayout withContext:(id)context
{
  v7 = [PUTileTransitionCoordinator browsingTileTransitionCoordinatorForTransitionFromLayout:layout toLayout:toLayout withTilingView:view anchorAssetReference:0 context:context];
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];
  transitionDriverIdentifier = [viewModel transitionDriverIdentifier];

  _decelerationTargetIndexPath = [(PUScrubberView *)self _decelerationTargetIndexPath];

  if (_decelerationTargetIndexPath)
  {
    v12 = +[PUScrubberSettings sharedInstance];
    [(PUScrubberView *)self _decelerationDistance];
    v14 = v13;
    [v12 settleRequiredDecelerationDistance];
    if (v14 <= v15)
    {
LABEL_8:

      goto LABEL_9;
    }

    v16 = MEMORY[0x1E696AD98];
    [v12 settleAnimationDuration];
LABEL_7:
    v17 = [v16 numberWithDouble:?];
    [v7 setAnimationDuration:v17];

    goto LABEL_8;
  }

  if (([transitionDriverIdentifier isEqual:self->_transitionLayoutIdentifier] & 1) != 0 || objc_msgSend(transitionDriverIdentifier, "isEqual:", @"PUBrowsingViewModelTransitionDriverIdentifierLivePhotoOverlay"))
  {
    v16 = MEMORY[0x1E696AD98];
    v12 = +[PUScrubberSettings sharedInstance];
    [v12 tapAnimationDuration];
    goto LABEL_7;
  }

  [v7 setAnimationDuration:&unk_1F2B7F5D8];
LABEL_9:

  return v7;
}

- (BOOL)layout:(id)layout isItemAtAtIndexPathSelected:(id)selected
{
  selectedCopy = selected;
  browsingSession = [(PUScrubberView *)self browsingSession];
  actionManager = [browsingSession actionManager];
  px_selectionManager = [actionManager px_selectionManager];
  selectionSnapshot = [px_selectionManager selectionSnapshot];

  if (selectionSnapshot)
  {
    dataSource = [selectionSnapshot dataSource];
    identifier = [dataSource identifier];
    section = [selectedCopy section];
    item = [selectedCopy item];

    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    v17[0] = identifier;
    v17[1] = section;
    v17[2] = item;
    v17[3] = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [selectedIndexPaths containsIndexPath:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)layout:(id)layout shouldShowTimeIndicatorForExpandedItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  if ([(PUScrubberView *)self useEmbeddedVideoScrubber])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    dataSource = [layoutCopy dataSource];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1050 description:{@"Invalid parameter not satisfying: %@", @"[assetsDataSource isKindOfClass:[PUAssetsDataSource class]]"}];
    }

    v11 = [dataSource assetAtIndexPath:pathCopy];
    v9 = [v11 canPlayPhotoIris] ^ 1;
  }

  return v9;
}

- (float)layout:(id)layout aspectRatioForItemAtIndexPath:(id)path
{
  layoutCopy = layout;
  pathCopy = path;
  loupeAspectRatio = [(PUScrubberView *)self loupeAspectRatio];

  if (loupeAspectRatio)
  {
    loupeAspectRatio2 = [(PUScrubberView *)self loupeAspectRatio];
  }

  else
  {
    loupeAspectRatio2 = [(NSMutableDictionary *)self->_aspectRatioByIndexPath objectForKeyedSubscript:pathCopy];
    if (!loupeAspectRatio2)
    {
      dataSource = [layoutCopy dataSource];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1030 description:{@"Invalid parameter not satisfying: %@", @"[assetsDataSource isKindOfClass:[PUAssetsDataSource class]]"}];
      }

      v12 = [dataSource assetAtIndexPath:pathCopy];
      [v12 aspectRatio];
      v14 = v13;
      v15 = (LODWORD(v14) & 0x7FFFFFFFu) - 1 < 0x7FFFFF;
      v16 = ((LODWORD(v14) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F;
      if (v14 >= 0.0)
      {
        v16 = 0;
        v15 = 0;
      }

      if (!fabs(v13))
      {
        v15 = 1;
      }

      v17 = COERCE_INT(fabs(v13)) == 2139095040 || v15;
      if (COERCE_UNSIGNED_INT(fabs(v13)) > 0x7F800000)
      {
        v17 = 1;
      }

      if ((v17 | v16) == 1)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1033 description:{@"Asset:%@ must provide a valid aspect ratio, got:%f.", v12, v14}];
      }

      *&v13 = v14;
      loupeAspectRatio2 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      [(NSMutableDictionary *)self->_aspectRatioByIndexPath setObject:loupeAspectRatio2 forKeyedSubscript:pathCopy];
    }
  }

  [loupeAspectRatio2 floatValue];
  v19 = v18;

  return v19;
}

- (id)tilingView:(id)view tileControllerWithIndexPath:(id)path kind:(id)kind dataSource:(id)source
{
  viewCopy = view;
  pathCopy = path;
  kindCopy = kind;
  sourceCopy = source;
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  v17 = [sourceCopy isEqual:assetsDataSource];

  if ((v17 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:967 description:{@"Invalid parameter not satisfying: %@", @"[dataSource isEqual:assetsDataSource]"}];
  }

  if ([kindCopy isEqualToString:@"PUTileKindItemContent"])
  {
    v59 = viewCopy;
    browsingSession2 = [(PUScrubberView *)self browsingSession];
    [browsingSession2 mediaProvider];
    v20 = v19 = self;

    v21 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    v22 = [viewModel assetViewModelForAssetReference:v21];
    selfCopy = v19;
    if ([(PUScrubberView *)v19 useEmbeddedVideoScrubber])
    {
LABEL_5:
      v23 = &PUScrubberImageTileViewReuseIdentifier;
LABEL_14:
      v24 = [v59 dequeueTileControllerWithReuseIdentifier:*v23];
      [v24 setAssetViewModel:v22];
      [v24 setMediaProvider:v20];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = +[PUInterfaceManager currentTheme];
        [v35 scrubberPlaceholderColor];
        v36 = viewModel;
        v37 = assetsDataSource;
        v38 = kindCopy;
        v40 = v39 = pathCopy;
        [v24 setPlaceholderColor:v40];

        pathCopy = v39;
        kindCopy = v38;
        assetsDataSource = v37;
        viewModel = v36;
      }

      viewCopy = v59;
      goto LABEL_17;
    }

    asset = [v22 asset];
    if ([asset mediaType] == 2)
    {
    }

    else
    {
      [v22 asset];
      v56 = viewModel;
      v30 = assetsDataSource;
      v31 = kindCopy;
      v33 = v32 = pathCopy;
      canPlayPhotoIris = [v33 canPlayPhotoIris];

      pathCopy = v32;
      kindCopy = v31;
      assetsDataSource = v30;
      viewModel = v56;

      if ((canPlayPhotoIris & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v23 = PUFilmstripTileViewReuseIdentifier;
    goto LABEL_14;
  }

  if ([kindCopy isEqualToString:@"PUTileKindPlayhead"])
  {
    v24 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUPlayheadTileViewReuseIdentifier"];
    goto LABEL_18;
  }

  if ([kindCopy isEqualToString:@"PUTileKindPlaybackTimeIndicator"])
  {
    v26 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
    [viewModel assetViewModelForAssetReference:v26];
    v28 = v27 = pathCopy;
    videoPlayer = [v28 videoPlayer];
    v24 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUPlaybackTimeIndicatorTileViewReuseIdentifier"];
    [v24 setDelegate:self];
    [v24 setVideoPlayer:videoPlayer];
    [v24 setViewModel:viewModel];

    pathCopy = v27;
    goto LABEL_18;
  }

  if ([kindCopy isEqualToString:@"PUTileKindVideoHighlightStrip"])
  {
    v24 = [viewCopy dequeueTileControllerWithReuseIdentifier:@"PUVideoHighlightStripTileViewControllerReuseIdentifier"];
    selfCopy = self;
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_25:
        v42 = [assetsDataSource assetReferenceAtIndexPath:pathCopy];
        [viewModel assetViewModelForAssetReference:v42];
        v44 = v43 = pathCopy;
        [v24 setAssetViewModel:v44];
        v45 = +[PUOneUpSettings sharedInstance];
        videoHighlightColor = [v45 videoHighlightColor];
        [v24 setHighlightColor:videoHighlightColor];

        pathCopy = v43;
LABEL_17:
        self = selfCopy;
LABEL_18:
        if (v24)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = objc_opt_class();
      v53 = NSStringFromClass(v54);
      px_descriptionForAssertionMessage = [v24 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PUScrubberView.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[tilingView dequeueTileControllerWithReuseIdentifier:PUVideoHighlightStripTileViewControllerReuseIdentifier]", v53, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      selfCopy2 = self;
      v53 = v51;
      [currentHandler2 handleFailureInMethod:a2 object:selfCopy2 file:@"PUScrubberView.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[tilingView dequeueTileControllerWithReuseIdentifier:PUVideoHighlightStripTileViewControllerReuseIdentifier]", v51}];
    }

    goto LABEL_25;
  }

LABEL_26:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1014 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];

  v24 = 0;
LABEL_19:

  return v24;
}

- (double)_playheadProgressForIrisAssetReference:(id)reference
{
  referenceCopy = reference;
  asset = [referenceCopy asset];
  canPlayPhotoIris = [asset canPlayPhotoIris];

  v7 = 0.0;
  if (canPlayPhotoIris)
  {
    browsingSession = [(PUScrubberView *)self browsingSession];
    viewModel = [browsingSession viewModel];

    v10 = [viewModel assetViewModelForAssetReference:referenceCopy];
    irisPlayer = [v10 irisPlayer];

    memset(&v16[1], 0, sizeof(CMTime));
    if (irisPlayer)
    {
      [irisPlayer currentPhotoTime];
      memset(v16, 0, 24);
      [irisPlayer currentVideoDuration];
    }

    else
    {
      memset(v16, 0, 24);
    }

    time1 = v16[0];
    v14 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v14) >= 1 && (v16[0].flags & 0x1D) == 1 && (v16[1].flags & 0x1D) == 1)
    {
      time1 = v16[1];
      Seconds = CMTimeGetSeconds(&time1);
      time1 = v16[0];
      v7 = Seconds / CMTimeGetSeconds(&time1);
    }
  }

  return v7;
}

- (double)_expandedItemWidth
{
  if ([(PUScrubberView *)self _expandedItemType]== 1)
  {
    _videoScrubberController2 = +[PUOneUpSettings sharedInstance];
    [_videoScrubberController2 autoplayScrubberWidth];
  }

  else
  {
    if ([(PUScrubberView *)self _expandedItemType]== 4)
    {
      [(PUScrubberView *)self bounds];
      Width = CGRectGetWidth(v15);
      [(PUScrubberView *)self embeddedVideoScrubberWidthFraction];
      return Width * v6;
    }

    _videoScrubberController = [(PUScrubberView *)self _videoScrubberController];

    if (!_videoScrubberController)
    {
      browsingSession = [(PUScrubberView *)self browsingSession];
      viewModel = [browsingSession viewModel];
      currentAssetReference = [viewModel currentAssetReference];
      asset = [currentAssetReference asset];

      [asset duration];
      [(PUScrubberView *)self _lengthForDuration:?];
      v9 = v14;

      return v9;
    }

    _videoScrubberController2 = [(PUScrubberView *)self _videoScrubberController];
    [_videoScrubberController2 length];
  }

  v9 = v4;

  return v9;
}

- (void)_updateScrubbingAwayFromContentEdgeBeganDragging:(BOOL)dragging
{
  draggingCopy = dragging;
  _videoScrubberController = [(PUScrubberView *)self _videoScrubberController];

  if (_videoScrubberController)
  {
    _videoScrubberController2 = [(PUScrubberView *)self _videoScrubberController];
    [_videoScrubberController2 playheadProgress];
    v8 = v7 >= 0.99 || v7 <= 0.00999999978;
    if (draggingCopy && v8 && [(PUScrubberView *)self _scrollViewSettled])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(PUScrubberView *)self _isScrubbingAwayFromContentEdge]& v8;
    }
  }

  else
  {
    v9 = 0;
  }

  [(PUScrubberView *)self _setScrubbingAwayFromContentEdge:v9];
}

- (void)_updateScrubberLayoutIfNeeded
{
  if (!self->_scrubberLayoutIsValid)
  {
    self->_scrubberLayoutIsValid = 1;
    _tilingView = [(PUScrubberView *)self _tilingView];
    browsingSession = [(PUScrubberView *)self browsingSession];
    viewModel = [browsingSession viewModel];

    _currentAssetsDataSource = [(PUScrubberView *)self _currentAssetsDataSource];
    currentAssetReference = [viewModel currentAssetReference];
    indexPath = [currentAssetReference indexPath];
    v8 = [viewModel assetViewModelForAssetReference:currentAssetReference];
    videoPlayer = [v8 videoPlayer];
    irisPlayer = [v8 irisPlayer];
    isDisplayingSearchQueryLabel = [v8 isDisplayingSearchQueryLabel];
    v11 = &OBJC_IVAR___PUPhotosAlbumViewController__album;
    if (-[PUScrubberView _areLayoutTransitionsDisabled](self, "_areLayoutTransitionsDisabled") && !self->_scrubberLayoutNeedsTransition && ![viewModel isChromeVisible])
    {
LABEL_98:

      return;
    }

    v98 = v8;
    avPlayer = [videoPlayer avPlayer];
    v103 = irisPlayer;
    v101 = viewModel;
    v99 = currentAssetReference;
    if ([viewModel isScrubbing] && -[PUScrubberView _isLibraryScrubbing](self, "_isLibraryScrubbing"))
    {
      v13 = 0;
      goto LABEL_22;
    }

    v14 = avPlayer;
    asset = [currentAssetReference asset];
    playbackStyle = [asset playbackStyle];

    if (playbackStyle == 5)
    {
      v17 = 0;
LABEL_16:
      avPlayer = v14;
LABEL_17:
      v11 = &OBJC_IVAR___PUPhotosAlbumViewController__album;
LABEL_18:
      if (avPlayer)
      {
        [(PUScrubberView *)self _setExpandedItemType:v17];
        goto LABEL_23;
      }

      if (([irisPlayer isActivated] & 1) == 0)
      {
        [(PUScrubberView *)self _setExpandedItemType:v17];
        goto LABEL_32;
      }

      avPlayer = [irisPlayer videoPlayer];
      v13 = 3;
LABEL_22:
      [(PUScrubberView *)self _setExpandedItemType:v13];
      if (avPlayer)
      {
LABEL_23:
        v104 = avPlayer;
        _videoScrubberController = [(PUScrubberView *)self _videoScrubberController];
        target = [_videoScrubberController target];
        videoPlayer2 = [target videoPlayer];

        if (videoPlayer2 != v104)
        {
          asset2 = [currentAssetReference asset];
          [asset2 duration];
          Seconds = v24;
          if ([asset2 canPlayPhotoIris])
          {
            memset(&v109, 0, sizeof(v109));
            if (asset2)
            {
              [asset2 photoIrisVideoDuration];
              if (v109.flags)
              {
                time = v109;
                Seconds = CMTimeGetSeconds(&time);
              }
            }
          }

          v26 = [objc_alloc(MEMORY[0x1E69C3A58]) initWithVideoPlayer:v104];
          v27 = [objc_alloc(MEMORY[0x1E69C3C68]) initWithTarget:v26 estimatedDuration:Seconds];
          [(PUScrubberView *)self _setVideoScrubberController:v27];
          [v27 playheadProgress];
          v29 = v28 > 0.0;

LABEL_34:
          _expandedAssetReference = [(PUScrubberView *)self _expandedAssetReference];
          type = [(PUScrubberView *)self type];
          v105 = +[PUScrubberSettings sharedInstance];
          _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
          v33 = _scrubberLayout;
          v34 = v11[877];
          if (*(&self->super.super.super.isa + v34) == 1)
          {
            *(&self->super.super.super.isa + v34) = 0;
            v29 = 1;
          }

          v97 = videoPlayer;
          v100 = _currentAssetsDataSource;
          if (_scrubberLayout)
          {
            dataSource = [_scrubberLayout dataSource];
            identifier = [dataSource identifier];
            identifier2 = [_currentAssetsDataSource identifier];
            v38 = [identifier isEqualToString:identifier2] ^ 1;

            v39 = v38 | v29;
          }

          else
          {
            v39 = 1;
          }

          v102 = _tilingView;
          indexPath2 = [_expandedAssetReference indexPath];
          expandedItemIndexPath = [v33 expandedItemIndexPath];
          v42 = expandedItemIndexPath;
          if (indexPath2 == expandedItemIndexPath)
          {
          }

          else
          {
            indexPath3 = [_expandedAssetReference indexPath];
            expandedItemIndexPath2 = [v33 expandedItemIndexPath];
            v45 = [indexPath3 isEqual:expandedItemIndexPath2];

            if (!v45)
            {
              v39 = 1;
            }
          }

          v46 = (type == 1) ^ [v33 onlyShowExpandedItem];
          [(PUScrubberView *)self _expandedItemWidth];
          v48 = v47;
          [v33 expandedItemWidth];
          v51 = v48 != v49 && _expandedAssetReference != 0;
          v52 = v46 | v39;
          _decelerationTargetIndexPath = [(PUScrubberView *)self _decelerationTargetIndexPath];
          v54 = [indexPath isEqual:_decelerationTargetIndexPath];
          v55 = _decelerationTargetIndexPath;
          if ((v54 & 1) != 0 || _decelerationTargetIndexPath && !-[PUScrubberView _isHandlingScrollViewWillEndDragging](self, "_isHandlingScrollViewWillEndDragging") && ([v105 decelerationTargetExpansionDistance], v57 > 0.0) && (objc_msgSend(v102, "contentOffset"), v59 = v58, v61 = v60, -[PUScrubberView _decelerationTargetOffset](self, "_decelerationTargetOffset"), v64 = hypot(v62 - v59, v63 - v61), objc_msgSend(v105, "decelerationTargetExpansionDistance"), v55 = _decelerationTargetIndexPath, v64 < v65) || -[PUScrubberView _useLoupe](self, "_useLoupe") && (v66 = -[PUScrubberView _isLibraryScrubbing](self, "_isLibraryScrubbing"), v55 = indexPath, v66))
          {
            v56 = v55;
          }

          else
          {
            v56 = 0;
          }

          v67 = v51 | v52;
          overrideLoupeIndexPath = [v33 overrideLoupeIndexPath];
          if (overrideLoupeIndexPath != v56)
          {
            overrideLoupeIndexPath2 = [v33 overrideLoupeIndexPath];
            v70 = [overrideLoupeIndexPath2 isEqual:v56] ^ 1;

            v67 |= v70;
          }

          _useLoupe = [(PUScrubberView *)self _useLoupe];
          if (v56)
          {
            v72 = 1;
          }

          else
          {
            v72 = _useLoupe;
          }

          if (v72)
          {
            v73 = 1.0;
          }

          else
          {
            v73 = 0.0;
          }

          [v33 loupeAmount];
          v76 = v74 != v73 && _expandedAssetReference == 0;
          if ([(PUScrubberView *)self useThinLoupe])
          {
            [(PUScrubberView *)self slitAspectRatio];
          }

          else
          {
            [v105 maxAspectRatio];
          }

          v78 = v77;
          _currentAssetsDataSource = v100;
          [v33 maxAspectRatio];
          v80 = v79;
          if (isDisplayingSearchQueryLabel)
          {
            v81 = -30.0;
          }

          else
          {
            v81 = 0.0;
          }

          [v33 timeIndicatorVerticalOffset];
          v83 = v81 != v82;
          if (v78 != v80)
          {
            v83 = 1;
          }

          if ((v83 | v76 | v67))
          {
            v84 = [(PUScrubberView *)self _newScrubberLayoutWithDataSource:v100];

            indexPath4 = [_expandedAssetReference indexPath];
            [v84 setExpandedItemIndexPath:indexPath4];

            [v84 setOnlyShowExpandedItem:type == 1];
            [(PUScrubberView *)self _setScrubberLayout:v84];
            v33 = v84;
          }

          viewModel = v101;
          _tilingView = v102;
          v86 = -24.0;
          if (!isDisplayingSearchQueryLabel)
          {
            v86 = 0.0;
          }

          [v33 setTimeIndicatorVerticalOffset:v86];
          [v33 setMaxAspectRatio:v78];
          [v33 setOverrideLoupeIndexPath:v56];
          [v33 setLoupeAmount:v73];
          [v33 setExpandedItemWidth:v48];
          [v33 setShouldHighlightSelectedItems:{objc_msgSend(v101, "isInSelectionMode")}];
          _expandedItemType = [(PUScrubberView *)self _expandedItemType];
          if (_expandedItemType == 3)
          {
            v88 = [v103 isPlaying] ^ 1;
          }

          else
          {
            v88 = _expandedItemType == 2;
          }

          [v33 setShowPlayheadForExpandedItem:v88];
          _expandedItemType2 = [(PUScrubberView *)self _expandedItemType];
          v90 = 0.0;
          if (_expandedItemType2 > 2)
          {
            if (_expandedItemType2 == 3)
            {
              [(PUScrubberView *)self _playheadProgressForIrisAssetReference:_expandedAssetReference];
              v90 = v93;
              goto LABEL_95;
            }

            if (_expandedItemType2 != 4)
            {
LABEL_95:
              [v33 setExpandedItemPlayheadProgress:v90];
              [v33 setSnapToExpandedItem:{-[PUScrubberView _allowExitFromContentScrubbing](self, "_allowExitFromContentScrubbing") ^ 1}];
              layout = [v102 layout];

              if (layout != v33)
              {
                _useSmoothingTransitionCoordinator = [(PUScrubberView *)self _useSmoothingTransitionCoordinator];
                [(PUScrubberView *)self _setUseSmoothingTransitionCoordinator:0];
                [v102 transitionToLayout:v33];
                [v102 layoutIfNeeded];
                [(PUScrubberView *)self _setUseSmoothingTransitionCoordinator:_useSmoothingTransitionCoordinator];
              }

              v8 = v98;
              currentAssetReference = v99;
              videoPlayer = v97;
              irisPlayer = v103;
              goto LABEL_98;
            }
          }

          else if (_expandedItemType2 >= 2)
          {
            if (_expandedItemType2 == 2)
            {
              _videoScrubberController2 = [(PUScrubberView *)self _videoScrubberController];
              [_videoScrubberController2 playheadProgress];
              v90 = v92;
            }

            goto LABEL_95;
          }

          v90 = 0.5;
          goto LABEL_95;
        }

LABEL_33:
        v29 = 0;
        goto LABEL_34;
      }

LABEL_32:
      [(PUScrubberView *)self _setVideoScrubberController:0];
      v104 = 0;
      goto LABEL_33;
    }

    asset3 = [currentAssetReference asset];
    if ([asset3 playbackStyle] == 4)
    {
      useEmbeddedVideoScrubber = [(PUScrubberView *)self useEmbeddedVideoScrubber];

      if (useEmbeddedVideoScrubber)
      {
        v17 = 4;
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([videoPlayer desiredPlayState] == 4)
    {
      v17 = 2;
      goto LABEL_16;
    }

    avPlayer = v14;
    if ([videoPlayer isActivated])
    {
      v17 = 2;
      goto LABEL_17;
    }

    v11 = &OBJC_IVAR___PUPhotosAlbumViewController__album;
    if ([videoPlayer desiredPlayState] == 3)
    {
      if ([(PUScrubberView *)self _isLibraryScrubbing])
      {
        _tilingView2 = [(PUScrubberView *)self _tilingView];
        if ([_tilingView2 isTracking] & 1) != 0 || (objc_msgSend(_tilingView2, "isDecelerating"))
        {

          goto LABEL_105;
        }
      }

      v17 = [videoPlayer playState] != 5;
      goto LABEL_18;
    }

LABEL_105:
    v17 = 0;
    goto LABEL_18;
  }
}

- (id)_expandedAssetReference
{
  if (![(PUScrubberView *)self canExpandCurrentAsset])
  {
    v10 = 0;
    goto LABEL_18;
  }

  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];

  currentAssetReference = [viewModel currentAssetReference];
  asset = [currentAssetReference asset];
  v7 = [viewModel assetViewModelForAssetReference:currentAssetReference];
  videoPlayer = [v7 videoPlayer];
  irisPlayer = [v7 irisPlayer];
  if ([(PUScrubberView *)self _expandedItemType]== 4)
  {
    if ([asset playbackStyle] != 4)
    {
LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }
  }

  else if ((-[PUScrubberView _expandedItemType](self, "_expandedItemType") == 2 || -[PUScrubberView _expandedItemType](self, "_expandedItemType") == 1) && ([asset isLivePhoto] & 1) == 0 && (objc_msgSend(asset, "canPlayPhotoIris") & 1) == 0)
  {
    if ([asset playbackStyle] != 4 || (objc_msgSend(videoPlayer, "isActivated") & 1) == 0 && objc_msgSend(videoPlayer, "desiredPlayState") != 3)
    {
      goto LABEL_16;
    }
  }

  else if (-[PUScrubberView _expandedItemType](self, "_expandedItemType") != 3 || ![irisPlayer isActivated])
  {
    goto LABEL_16;
  }

  v11 = currentAssetReference;
LABEL_17:
  v10 = v11;

LABEL_18:

  return v10;
}

- (id)_currentAssetsDataSource
{
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  v5 = assetsDataSource;
  if (assetsDataSource)
  {
    v6 = assetsDataSource;
  }

  else
  {
    v6 = +[PUAssetsDataSource emptyDataSource];
  }

  v7 = v6;

  return v7;
}

- (double)_lengthForDuration:(double)duration
{
  v4 = +[PUScrubberSettings sharedInstance];
  [v4 minVideoDuration];
  if (durationCopy <= duration)
  {
    durationCopy = duration;
  }

  if (durationCopy >= 2.0)
  {
    v7 = durationCopy;
    v6 = log2f(v7);
  }

  else
  {
    v6 = durationCopy * 0.5;
  }

  [v4 baseVideoWidth];
  v9 = v6 * v8;

  return v9;
}

- (void)_handleTapOnBrowsingIrisPlayer:(id)player
{
  playerCopy = player;
  if (([playerCopy isActivated] & 1) == 0)
  {
    if (playerCopy)
    {
      [playerCopy currentVideoDuration];
      if ((v11 & 0x100000000) != 0)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __49__PUScrubberView__handleTapOnBrowsingIrisPlayer___block_invoke;
        v9[3] = &unk_1E7B80DD0;
        v4 = v10;
        v5 = playerCopy;
        v10[0] = v5;
        v6 = v9;
LABEL_8:
        [v5 performChanges:v6];

        goto LABEL_9;
      }
    }

    else
    {
      v10[1] = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  if ([playerCopy isActivated])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__PUScrubberView__handleTapOnBrowsingIrisPlayer___block_invoke_2;
    v7[3] = &unk_1E7B80DD0;
    v4 = &v8;
    v5 = playerCopy;
    v8 = v5;
    v6 = v7;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleTapOnBrowsingVideoPlayer:(id)player
{
  playerCopy = player;
  asset = [playerCopy asset];
  if (([asset canPlayLoopingVideo] & 1) == 0)
  {
    v5 = +[PUOneUpSettings sharedInstance];
    v6 = [v5 allowAutoplayVideoForAsset:asset];

    if (v6)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __50__PUScrubberView__handleTapOnBrowsingVideoPlayer___block_invoke;
      v23[3] = &unk_1E7B80DD0;
      v7 = &v24;
      v8 = playerCopy;
      v24 = v8;
      v9 = v23;
    }

    else
    {
      asset2 = [playerCopy asset];
      canPlayLoopingVideo = [asset2 canPlayLoopingVideo];

      if ((canPlayLoopingVideo & 1) == 0)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __50__PUScrubberView__handleTapOnBrowsingVideoPlayer___block_invoke_2;
        v21[3] = &unk_1E7B80DD0;
        v7 = &v22;
        v12 = playerCopy;
        v22 = v12;
        [v12 performChanges:v21];
        v13 = +[PUOneUpSettings sharedInstance];
        allowPlayButtonInBars = [v13 allowPlayButtonInBars];

        if (allowPlayButtonInBars)
        {
          if ([v12 desiredPlayState] <= 2)
          {
            v15 = 4;
          }

          else
          {
            v15 = 2;
          }

          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __50__PUScrubberView__handleTapOnBrowsingVideoPlayer___block_invoke_3;
          v18[3] = &unk_1E7B7FF70;
          v19 = v12;
          v20 = v15;
          [v19 performChanges:v18];
        }

        goto LABEL_7;
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __50__PUScrubberView__handleTapOnBrowsingVideoPlayer___block_invoke_4;
      v16[3] = &unk_1E7B80DD0;
      v7 = &v17;
      v8 = playerCopy;
      v17 = v8;
      v9 = v16;
    }

    [v8 performChanges:v9];
LABEL_7:
  }
}

uint64_t __50__PUScrubberView__handleTapOnBrowsingVideoPlayer___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setActivated:1];
  v2 = *(a1 + 32);

  return [v2 setDesiredPlayState:3 reason:@"User tapped looping video in scrubber."];
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  _tilingView = [(PUScrubberView *)self _tilingView];
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];

  assetsDataSource = [viewModel assetsDataSource];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__77962;
  v32 = __Block_byref_object_dispose__77963;
  v33 = 0;
  [tapCopy locationInView:_tilingView];
  v10 = v9;
  v12 = v11;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __29__PUScrubberView__handleTap___block_invoke;
  v25[3] = &unk_1E7B7DD60;
  v13 = assetsDataSource;
  v26 = v13;
  v27 = &v28;
  [_tilingView enumeratePresentedTileControllersInRect:v25 usingBlock:{v10, v12, 1.0, 1.0}];
  if (v29[5])
  {
    v14 = [v13 assetReferenceAtIndexPath:?];
    currentAssetReference = [viewModel currentAssetReference];
    v16 = [currentAssetReference isEqual:v14];

    if (v16)
    {
      v17 = [viewModel assetViewModelForAssetReference:v14];
      videoPlayer = [v17 videoPlayer];
      irisPlayer = [v17 irisPlayer];
      v20 = irisPlayer;
      if (videoPlayer)
      {
        [(PUScrubberView *)self _handleTapOnBrowsingVideoPlayer:videoPlayer];
      }

      else if (irisPlayer)
      {
        [(PUScrubberView *)self _handleTapOnBrowsingIrisPlayer:irisPlayer];
      }
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __29__PUScrubberView__handleTap___block_invoke_2;
      v21[3] = &unk_1E7B809F0;
      v22 = viewModel;
      v23 = v14;
      selfCopy = self;
      [v22 performChanges:v21];

      v17 = v22;
    }
  }

  _Block_object_dispose(&v28, 8);
}

void __29__PUScrubberView__handleTap___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v6 = [v14 tileKind];
  v7 = [v6 isEqualToString:@"PUTileKindItemContent"];

  if (v7)
  {
    v8 = [v14 dataSourceIdentifier];
    v9 = [*(a1 + 32) identifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      v11 = [v14 indexPath];
      v12 = *(*(a1 + 40) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      *a4 = 1;
    }
  }
}

- (void)_handleUserScrollWillBegin:(BOOL)begin
{
  beginCopy = begin;
  [(PUScrubberView *)self _setIsHandlingUserScroll:1];
  [(PUScrubberView *)self _updateScrubbingAwayFromContentEdgeBeganDragging:beginCopy];
  if (beginCopy)
  {
    [(PUScrubberView *)self _setDecelerationTargetIndexPath:0];
  }

  _tilingView = [(PUScrubberView *)self _tilingView];
  if (([_tilingView isDragging] & 1) != 0 || objc_msgSend(_tilingView, "isDecelerating"))
  {
    [(PUScrubberView *)self _setScrollViewSettled:0];
  }

  _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
  _currentAssetsDataSource = [(PUScrubberView *)self _currentAssetsDataSource];
  dataSource = [_scrubberLayout dataSource];
  v10 = dataSource;
  if (dataSource != _currentAssetsDataSource)
  {
    v11 = [dataSource isEqual:_currentAssetsDataSource];

    if (v11)
    {
      goto LABEL_10;
    }

    [(PUScrubberView *)self updateIfNeeded];
    _tilingView2 = [(PUScrubberView *)self _tilingView];
    [_tilingView2 layoutIfNeeded];

    _scrubberLayout2 = [(PUScrubberView *)self _scrubberLayout];

    [(PUScrubberView *)self _currentAssetsDataSource];
    _currentAssetsDataSource = v10 = _currentAssetsDataSource;
    _scrubberLayout = _scrubberLayout2;
  }

LABEL_10:
  dataSource2 = [_scrubberLayout dataSource];
  if (([dataSource2 isEqual:_currentAssetsDataSource] & 1) == 0)
  {
    dataSource3 = [_scrubberLayout dataSource];

    if (dataSource3 == _currentAssetsDataSource)
    {
      goto LABEL_14;
    }

    dataSource2 = [MEMORY[0x1E696AAA8] currentHandler];
    [dataSource2 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"[scrubberLayout.dataSource isEqual:assetsDataSource] || scrubberLayout.dataSource == assetsDataSource"}];
  }

LABEL_14:
  _videoScrubberController = [(PUScrubberView *)self _videoScrubberController];
  if (!_videoScrubberController)
  {
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    goto LABEL_26;
  }

  v17 = _videoScrubberController;
  expandedItemIndexPath = [_scrubberLayout expandedItemIndexPath];

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  if (!expandedItemIndexPath)
  {
    goto LABEL_26;
  }

  if (beginCopy)
  {
    _tilingView3 = [(PUScrubberView *)self _tilingView];
    panGestureRecognizer = [_tilingView3 panGestureRecognizer];
    _tilingView4 = [(PUScrubberView *)self _tilingView];
    [panGestureRecognizer locationInView:_tilingView4];

    PXRectWithCenterAndSize();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    browsingSession = [(PUScrubberView *)self browsingSession];
    viewModel = [browsingSession viewModel];
    currentAssetReference = [viewModel currentAssetReference];
    indexPath = [currentAssetReference indexPath];

    _tilingView5 = [(PUScrubberView *)self _tilingView];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __45__PUScrubberView__handleUserScrollWillBegin___block_invoke;
    v60[3] = &unk_1E7B7DD60;
    _videoScrubberController2 = indexPath;
    v61 = _videoScrubberController2;
    v62 = &v63;
    [_tilingView5 enumeratePresentedTileControllersInRect:v60 usingBlock:{v23, v25, v27, v29}];

    browsingSession2 = [(PUScrubberView *)self browsingSession];
    viewModel2 = [browsingSession2 viewModel];
    assetViewModelForCurrentAssetReference = [viewModel2 assetViewModelForCurrentAssetReference];
    videoPlayer = [assetViewModelForCurrentAssetReference videoPlayer];

    if (*(v64 + 24) == 1)
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __45__PUScrubberView__handleUserScrollWillBegin___block_invoke_2;
      v58[3] = &unk_1E7B80DD0;
      v59 = videoPlayer;
      [v59 performChanges:v58];

      v40 = *(v64 + 24);
    }

    else
    {
      v40 = 0;
    }

    [(PUScrubberView *)self setCurrentDragBeganOnContent:v40 & 1];

    goto LABEL_25;
  }

  if ([(PUScrubberView *)self _expandedItemType]== 2 || [(PUScrubberView *)self _expandedItemType]== 3)
  {
    [_scrubberLayout currentItemFocusProgress];
    v42 = v41;
    _videoScrubberController2 = [(PUScrubberView *)self _videoScrubberController];
    [_videoScrubberController2 setPlayheadProgress:v42];
LABEL_25:
  }

LABEL_26:
  currentItemIndexPath = [_scrubberLayout currentItemIndexPath];
  expandedItemIndexPath2 = [_scrubberLayout expandedItemIndexPath];
  if ([currentItemIndexPath isEqual:expandedItemIndexPath2])
  {

    v45 = &OBJC_IVAR___PUScrubberView__contentScrubbingIdentifier;
  }

  else
  {
    v46 = *(v64 + 24);

    v45 = &OBJC_IVAR___PUScrubberView__scrubbingIdentifier;
    if (v46)
    {
      v45 = &OBJC_IVAR___PUScrubberView__contentScrubbingIdentifier;
    }
  }

  v47 = *(&self->super.super.super.isa + *v45);
  if (currentItemIndexPath)
  {
    [_scrubberLayout currentItemTransitionProgress];
    [(PUScrubberView *)self _setScrubbingTransitionProgress:?];
    v48 = [_currentAssetsDataSource assetReferenceAtIndexPath:currentItemIndexPath];
    if (!v48)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"assetReference != nil"}];
    }

    browsingSession3 = [(PUScrubberView *)self browsingSession];
    viewModel3 = [browsingSession3 viewModel];

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __45__PUScrubberView__handleUserScrollWillBegin___block_invoke_3;
    v54[3] = &unk_1E7B809F0;
    v51 = viewModel3;
    v55 = v51;
    v52 = v48;
    v56 = v52;
    v57 = v47;
    [v51 performChanges:v54];
  }

  [(PUScrubberView *)self _invalidateSnapToExpandedItem];
  [(PUScrubberView *)self _setIsHandlingUserScroll:0];

  _Block_object_dispose(&v63, 8);
}

void __45__PUScrubberView__handleUserScrollWillBegin___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 indexPath];
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_5;
  }

  v9 = [v6 isEqual:v7];

  if (v9)
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t __45__PUScrubberView__handleUserScrollWillBegin___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setActivated:1];
  result = [*(a1 + 32) desiredPlayState];
  if (result == 3)
  {
    v3 = *(a1 + 32);

    return [v3 setDesiredPlayState:4 reason:@"User began scrubbing video while video was autoplaying"];
  }

  return result;
}

uint64_t __45__PUScrubberView__handleUserScrollWillBegin___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCurrentAssetReference:*(a1 + 40) transitionProgress:*(a1 + 48) transitionDriverIdentifier:0 animated:0.0];
  v2 = *(a1 + 32);

  return [v2 setIsScrubbing:1];
}

- (BOOL)_allowExitFromContentScrubbing
{
  if (![(PUScrubberView *)self _isScrubbingAwayFromContentEdge]&& [(PUScrubberView *)self _expandedItemType]!= 1 && [(PUScrubberView *)self _expandedItemType]!= 4)
  {
    return 0;
  }

  _tilingView = [(PUScrubberView *)self _tilingView];
  if ([_tilingView isTracking])
  {
    v4 = [(PUScrubberView *)self type]!= 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isDrivingPlayheadProgress
{
  _tilingView = [(PUScrubberView *)self _tilingView];
  if (-[PUScrubberView _isHandlingUserScroll](self, "_isHandlingUserScroll") || ([_tilingView isTracking] & 1) != 0 || (objc_msgSend(_tilingView, "isDecelerating") & 1) != 0)
  {
    isDragging = 1;
  }

  else
  {
    isDragging = [_tilingView isDragging];
  }

  return isDragging;
}

- (BOOL)_isContentScrubbing
{
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];
  transitionDriverIdentifier = [viewModel transitionDriverIdentifier];

  _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
  if ([transitionDriverIdentifier isEqualToString:self->_contentScrubbingIdentifier])
  {
    _videoScrubberController = [(PUScrubberView *)self _videoScrubberController];
    if (_videoScrubberController)
    {
      expandedItemIndexPath = [_scrubberLayout expandedItemIndexPath];
      v9 = expandedItemIndexPath != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_isLibraryScrubbing
{
  selfCopy = self;
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];
  transitionDriverIdentifier = [viewModel transitionDriverIdentifier];

  LOBYTE(selfCopy) = [transitionDriverIdentifier isEqualToString:selfCopy->_scrubbingIdentifier];
  return selfCopy;
}

- (id)_newScrubberLayoutWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(PUSectionedTilingLayout *)[PUScrubberTilingLayout alloc] initWithDataSource:sourceCopy];

  [(PUScrubberView *)self itemCornerRadius];
  [(PUScrubberTilingLayout *)v5 setItemCornerRadius:?];
  [(PUScrubberView *)self slitAspectRatio];
  [(PUScrubberTilingLayout *)v5 setSlitAspectRatio:?];
  [(PUScrubberView *)self interItemSpacing];
  v7 = v6;
  [(PUScrubberView *)self interSectionSpacing];
  v9 = v8;
  [(PUScrubberTilingLayout *)v5 setInterItemSpacing:v7, v7];
  [(PUSectionedTilingLayout *)v5 setInterSectionSpacing:v9, v9];
  [(PUScrubberTilingLayout *)v5 setUseEmbeddedVideoScrubber:[(PUScrubberView *)self useEmbeddedVideoScrubber]];
  if ([(PUScrubberView *)self useEmbeddedVideoScrubber])
  {
    [(PUScrubberTilingLayout *)v5 setExpandedItemPadding:8.0];
  }

  v10 = +[PUScrubberSettings sharedInstance];
  [v10 verticalMargin];
  v12 = v11;

  [(PUScrubberView *)self topOutset];
  [(PUScrubberTilingLayout *)v5 setContentPadding:v12 + v13, 0.0, v12, 0.0];
  [(PUScrubberTilingLayout *)v5 setPlayheadVerticalOverhang:v12 * 0.5];
  [(PUScrubberTilingLayout *)v5 setDelegate:self];
  return v5;
}

- (void)_updateTilingViewIfNeeded
{
  _tilingView = [(PUScrubberView *)self _tilingView];
  if (!_tilingView)
  {
    v4 = [PUTilingView alloc];
    [(PUScrubberView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _scrubberLayout = [(PUScrubberView *)self _scrubberLayout];
    v22 = [(PUTilingView *)v4 initWithFrame:_scrubberLayout layout:v6, v8, v10, v12];

    [(PUTilingView *)v22 setAutoresizingMask:18];
    [(PUTilingView *)v22 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(PUTilingView *)v22 setShowsHorizontalScrollIndicator:0];
    [(PUTilingView *)v22 setShowsVerticalScrollIndicator:0];
    [(PUTilingView *)v22 setClipsToBounds:0];
    [(PUTilingView *)v22 _setContentOffsetRoundingEnabled:0];
    [(PUTilingView *)v22 _setAutomaticContentOffsetAdjustmentEnabled:0];
    [(PUTilingView *)v22 _setSupportsPointerDragScrolling:1];
    [(PUScrubberView *)self addSubview:v22];
    [(PUTilingView *)v22 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUFilmstripTileViewReuseIdentifier"];
    [(PUTilingView *)v22 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUScrubberImageTileViewReuseIdentifier"];
    [(PUTilingView *)v22 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUPlayheadTileViewReuseIdentifier"];
    [(PUTilingView *)v22 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUPlaybackTimeIndicatorTileViewReuseIdentifier"];
    [(PUTilingView *)v22 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUVideoHighlightStripTileViewControllerReuseIdentifier"];
    [(PUScrubberView *)self _setTilingView:v22];
    _tilingView = v22;
  }

  v23 = _tilingView;
  layout = [_tilingView layout];
  [v23 bounds];
  v16 = v15;
  [layout slitAspectRatio];
  v18 = v17 * v16;
  [layout interItemSpacing];
  v20 = (v18 + v19) * -3.0;
  v21 = 0.0;
  if (v20 <= 0.0)
  {
    v21 = v20;
  }

  [v23 setLoadingInsets:{0.0, v21, 0.0, v21}];
}

- (void)_setTilingView:(id)view
{
  viewCopy = view;
  tilingView = self->__tilingView;
  if (tilingView != viewCopy)
  {
    v12 = viewCopy;
    [(PUTilingView *)tilingView setTileSource:0];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:0];
    [(PUTilingView *)self->__tilingView setScrollDelegate:0];
    [(PUTilingView *)self->__tilingView setDelegate:0];
    objc_storeStrong(&self->__tilingView, view);
    [(PUTilingView *)self->__tilingView setTileSource:self];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:self];
    [(PUTilingView *)self->__tilingView setScrollDelegate:self];
    [(PUTilingView *)self->__tilingView setDelegate:self];
    browsingSession = [(PUScrubberView *)self browsingSession];
    [browsingSession configureTilingView:v12];

    _tapGestureRecognizer = [(PUScrubberView *)self _tapGestureRecognizer];
    view = [_tapGestureRecognizer view];
    v10 = self->__tilingView;

    if (view != v10)
    {
      view2 = [_tapGestureRecognizer view];
      [view2 removeGestureRecognizer:_tapGestureRecognizer];

      [(PUTilingView *)self->__tilingView addGestureRecognizer:_tapGestureRecognizer];
    }

    viewCopy = v12;
  }

  MEMORY[0x1EEE66BB8](tilingView, viewCopy);
}

- (void)_setScrubbingAwayFromContentEdge:(BOOL)edge
{
  if (self->__isScrubbingAwayFromContentEdge != edge)
  {
    self->__isScrubbingAwayFromContentEdge = edge;
    [(PUScrubberView *)self _invalidateSnapToExpandedItem];
  }
}

- (void)_setVideoScrubberController:(id)controller
{
  controllerCopy = controller;
  videoScrubberController = self->__videoScrubberController;
  if (videoScrubberController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXVideoScrubberController *)videoScrubberController setDelegate:0];
    objc_storeStrong(&self->__videoScrubberController, controller);
    videoScrubberController = [(PXVideoScrubberController *)v7 setDelegate:self];
    controllerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](videoScrubberController, controllerCopy);
}

- (void)_updateSnapToExpandedItemIfNeeded
{
  if (!self->_snapToExpandedIsValid)
  {
    self->_snapToExpandedIsValid = 1;
    v4 = [(PUScrubberView *)self _allowExitFromContentScrubbing]^ 1;

    [(PUScrubberView *)self _setSnapToExpandedItem:v4];
  }
}

- (void)_updateLoupeEffectIfNeeded
{
  if (!self->_loupeEffectIsValid)
  {
    self->_loupeEffectIsValid = 1;
    v4 = +[PUScrubberSettings sharedInstance];
    interactiveLoupeBehavior = [v4 interactiveLoupeBehavior];

    _tilingView = [(PUScrubberView *)self _tilingView];
    if ([_tilingView isDecelerating] && !objc_msgSend(_tilingView, "isTracking") || -[PUScrubberView _isHandlingScrollViewWillEndDragging](self, "_isHandlingScrollViewWillEndDragging") || objc_msgSend(_tilingView, "isDragging") && !interactiveLoupeBehavior)
    {
      v6 = 0;
    }

    else
    {
      v6 = [_tilingView pu_isPerformingScrollTest] ^ 1;
    }

    [(PUScrubberView *)self _setUseLoupe:v6];
    if (([_tilingView isDragging] & 1) != 0 || objc_msgSend(_tilingView, "isDecelerating"))
    {
      _decelerationTargetIndexPath = [(PUScrubberView *)self _decelerationTargetIndexPath];
      if (_decelerationTargetIndexPath)
      {
        v8 = 0;
      }

      else
      {
        v8 = interactiveLoupeBehavior == 1;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    [(PUScrubberView *)self setUseThinLoupe:v9];
  }
}

- (void)updateIfNeeded
{
  [(PUScrubberView *)self _updateLoupeEffectIfNeeded];
  [(PUScrubberView *)self _updateSnapToExpandedItemIfNeeded];
  [(PUScrubberView *)self _updateScrubberLayoutIfNeeded];

  [(PUScrubberView *)self _updateTilingViewIfNeeded];
}

- (void)_setDecelerationTargetIndexPath:(id)path
{
  pathCopy = path;
  decelerationTargetIndexPath = self->__decelerationTargetIndexPath;
  if (decelerationTargetIndexPath != pathCopy)
  {
    v7 = pathCopy;
    decelerationTargetIndexPath = [decelerationTargetIndexPath isEqual:pathCopy];
    pathCopy = v7;
    if ((decelerationTargetIndexPath & 1) == 0)
    {
      objc_storeStrong(&self->__decelerationTargetIndexPath, path);
      [(PUScrubberView *)self _invalidateLoupeEffect];
      decelerationTargetIndexPath = [(PUScrubberView *)self _invalidateScrubberLayout];
      pathCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](decelerationTargetIndexPath, pathCopy);
}

- (void)_setHandlingScrollViewWillEndDragging:(BOOL)dragging
{
  if (self->__isHandlingScrollViewWillEndDragging != dragging)
  {
    self->__isHandlingScrollViewWillEndDragging = dragging;
    [(PUScrubberView *)self _invalidateLoupeEffect];

    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)_setSnapToExpandedItem:(BOOL)item
{
  if (self->__snapToExpandedItem != item)
  {
    self->__snapToExpandedItem = item;
    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)setUseThinLoupe:(BOOL)loupe
{
  if (self->_useThinLoupe != loupe)
  {
    self->_useThinLoupe = loupe;
    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)_setUseLoupe:(BOOL)loupe
{
  if (self->__useLoupe != loupe)
  {
    self->__useLoupe = loupe;
    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)cancelDeceleration
{
  _tilingView = [(PUScrubberView *)self _tilingView];
  isDecelerating = [_tilingView isDecelerating];

  if (isDecelerating)
  {
    _tilingView2 = [(PUScrubberView *)self _tilingView];
    _tilingView3 = [(PUScrubberView *)self _tilingView];
    [_tilingView3 contentOffset];
    [_tilingView2 setContentOffset:0 animated:?];
  }
}

- (void)endPreviewing
{
  [(PUScrubberView *)self _endScrubbing];
  browsingSession = [(PUScrubberView *)self browsingSession];
  viewModel = [browsingSession viewModel];

  [(PUScrubberView *)self _updateScrollPositionAnimated:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__PUScrubberView_endPreviewing__block_invoke;
  v6[3] = &unk_1E7B80C38;
  v7 = viewModel;
  selfCopy = self;
  v5 = viewModel;
  [v5 performChanges:v6];
}

void __31__PUScrubberView_endPreviewing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetsDataSource];
  v3 = [v2 startingAssetReference];

  [*(a1 + 32) setCurrentAssetReference:v3 transitionProgress:*(*(a1 + 40) + 408) transitionDriverIdentifier:0 animated:0.0];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToShouldIgnoreHitTestWithEvent = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setType:(int64_t)type
{
  if (self->_type != type)
  {
    self->_type = type;
    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)setSelectionManager:(id)manager
{
  managerCopy = manager;
  selectionManager = self->_selectionManager;
  if (selectionManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXSectionedSelectionManager *)selectionManager unregisterChangeObserver:self context:PXSelectionManagerObservationContext];
    objc_storeStrong(&self->_selectionManager, manager);
    selectionManager = [(PXSectionedSelectionManager *)self->_selectionManager registerChangeObserver:self context:PXSelectionManagerObservationContext];
    managerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](selectionManager, managerCopy);
}

- (void)setBrowsingSession:(id)session
{
  sessionCopy = session;
  browsingSession = self->_browsingSession;
  v13 = sessionCopy;
  if (browsingSession != sessionCopy)
  {
    viewModel = [(PUBrowsingSession *)browsingSession viewModel];
    [viewModel unregisterChangeObserver:self];

    objc_storeStrong(&self->_browsingSession, session);
    viewModel2 = [(PUBrowsingSession *)self->_browsingSession viewModel];
    [viewModel2 registerChangeObserver:self];

    [(NSMutableDictionary *)self->_aspectRatioByIndexPath removeAllObjects];
    [(PUScrubberView *)self _setDecelerationTargetIndexPath:0];
    [(PUScrubberView *)self _invalidateLoupeEffect];
    [(PUScrubberView *)self _invalidateScrubberLayout];
    [(PUScrubberView *)self _invalidateSnapToExpandedItem];
    actionManager = [(PUBrowsingSession *)v13 actionManager];
    px_selectionManager = [actionManager px_selectionManager];
    [(PUScrubberView *)self setSelectionManager:px_selectionManager];

    _tilingView = [(PUScrubberView *)self _tilingView];

    if (_tilingView)
    {
      _tilingView2 = [(PUScrubberView *)self _tilingView];
      [(PUBrowsingSession *)v13 configureTilingView:_tilingView2];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUScrubberView;
  [(PUScrubberView *)&v3 layoutSubviews];
  [(PUScrubberView *)self updateIfNeeded];
}

- (void)dealloc
{
  [(PUTilingView *)self->__tilingView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PUScrubberView;
  [(PUScrubberView *)&v3 dealloc];
}

- (PUScrubberView)initWithFrame:(CGRect)frame
{
  v36.receiver = self;
  v36.super_class = PUScrubberView;
  v3 = [(PUScrubberView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_canExpandCurrentAsset = 1;
    v5 = +[PUScrubberSettings sharedInstance];
    [v5 slitAspectRatio];
    v4->_slitAspectRatio = v6;
    [v5 interItemSpacing];
    v4->_interItemSpacing = v7;
    [v5 interSectionSpacing];
    v4->_interSectionSpacing = v8;
    [v5 itemCornerRadius];
    v4->_itemCornerRadius = v9;
    [v5 topOutset];
    v4->_topOutset = v10;
    v4->_useEmbeddedVideoScrubber = 0;
    v4->_embeddedVideoScrubberWidthFraction = 0.7;
    v11 = +[PUOneUpSettings sharedInstance];
    useDebuggingColors = [v11 useDebuggingColors];

    if (useDebuggingColors)
    {
      yellowColor = [MEMORY[0x1E69DC888] yellowColor];
      [(PUScrubberView *)v4 setBackgroundColor:yellowColor];
    }

    v14 = [objc_opt_class() description];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v17 = [v14 stringByAppendingString:uUIDString];
    scrubbingIdentifier = v4->_scrubbingIdentifier;
    v4->_scrubbingIdentifier = v17;

    v19 = [objc_opt_class() description];
    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v22 = [v19 stringByAppendingString:uUIDString2];
    contentScrubbingIdentifier = v4->_contentScrubbingIdentifier;
    v4->_contentScrubbingIdentifier = v22;

    v24 = [objc_opt_class() description];
    uUID3 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString3 = [uUID3 UUIDString];
    v27 = [v24 stringByAppendingString:uUIDString3];
    transitionLayoutIdentifier = v4->_transitionLayoutIdentifier;
    v4->_transitionLayoutIdentifier = v27;

    v29 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__handleTap_];
    tapGestureRecognizer = v4->__tapGestureRecognizer;
    v4->__tapGestureRecognizer = v29;

    v31 = [[PUTouchingGestureRecognizer alloc] initWithTarget:v4 action:sel_handleTouchGesture_];
    touchingGestureRecognizer = v4->_touchingGestureRecognizer;
    v4->_touchingGestureRecognizer = v31;

    [(PUTouchingGestureRecognizer *)v4->_touchingGestureRecognizer setDelegate:v4];
    [(PUScrubberView *)v4 addGestureRecognizer:v4->_touchingGestureRecognizer];
    v4->__useSmoothingTransitionCoordinator = 1;
    v4->__scrollViewSettled = 1;
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    aspectRatioByIndexPath = v4->_aspectRatioByIndexPath;
    v4->_aspectRatioByIndexPath = v33;
  }

  return v4;
}

@end