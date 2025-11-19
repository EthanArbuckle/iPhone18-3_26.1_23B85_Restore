@interface PUScrubberView
- (BOOL)_allowExitFromContentScrubbing;
- (BOOL)_isContentScrubbing;
- (BOOL)_isDrivingPlayheadProgress;
- (BOOL)_isLibraryScrubbing;
- (BOOL)layout:(id)a3 isItemAtAtIndexPathSelected:(id)a4;
- (BOOL)layout:(id)a3 shouldShowTimeIndicatorForExpandedItemAtIndexPath:(id)a4;
- (BOOL)playbackTimeIndicatorTileViewControllerCanFlashIndicator:(id)a3;
- (CGPoint)_decelerationTargetOffset;
- (CGPoint)tilingView:(id)a3 initialVisibleOriginWithLayout:(id)a4;
- (PUScrubberView)initWithFrame:(CGRect)a3;
- (PUScrubberViewDelegate)delegate;
- (double)_expandedItemWidth;
- (double)_lengthForDuration:(double)a3;
- (double)_playheadProgressForIrisAssetReference:(id)a3;
- (float)layout:(id)a3 aspectRatioForItemAtIndexPath:(id)a4;
- (id)_currentAssetsDataSource;
- (id)_expandedAssetReference;
- (id)_newScrubberLayoutWithDataSource:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)tilingView:(id)a3 tileControllerWithIndexPath:(id)a4 kind:(id)a5 dataSource:(id)a6;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForChangeFromFrame:(CGRect)a4 toFrame:(CGRect)a5 duration:(double)a6;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForLayoutInvalidationContext:(id)a4;
- (id)tilingView:(id)a3 tileTransitionCoordinatorForTransitionFromLayout:(id)a4 toLayout:(id)a5 withContext:(id)a6;
- (void)_disableLayoutTransitionsForDuration:(double)a3;
- (void)_endScrubbing;
- (void)_handleTap:(id)a3;
- (void)_handleTapOnBrowsingIrisPlayer:(id)a3;
- (void)_handleTapOnBrowsingVideoPlayer:(id)a3;
- (void)_handleUserScrollWillBegin:(BOOL)a3;
- (void)_reenableLayoutTransitions;
- (void)_setDecelerationTargetIndexPath:(id)a3;
- (void)_setHandlingScrollViewWillEndDragging:(BOOL)a3;
- (void)_setScrubbingAwayFromContentEdge:(BOOL)a3;
- (void)_setSnapToExpandedItem:(BOOL)a3;
- (void)_setTilingView:(id)a3;
- (void)_setUseLoupe:(BOOL)a3;
- (void)_setVideoScrubberController:(id)a3;
- (void)_updateLoupeEffectIfNeeded;
- (void)_updateScrollPositionAnimated:(BOOL)a3;
- (void)_updateScrubberLayoutIfNeeded;
- (void)_updateScrubbingAwayFromContentEdgeBeganDragging:(BOOL)a3;
- (void)_updateSnapToExpandedItemIfNeeded;
- (void)_updateTilingViewIfNeeded;
- (void)cancelDeceleration;
- (void)dealloc;
- (void)endPreviewing;
- (void)handleTouchGesture:(id)a3;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setBrowsingSession:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSelectionManager:(id)a3;
- (void)setType:(int64_t)a3;
- (void)setUseThinLoupe:(BOOL)a3;
- (void)updateIfNeeded;
- (void)videoScrubberController:(id)a3 desiredSeekTime:(id *)a4;
- (void)videoScrubberControllerDidUpdate:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(PUScrubberView *)self topOutset];
  if (y < v8 && self->_delegateFlags.respondsToShouldIgnoreHitTestWithEvent && (WeakRetained = objc_loadWeakRetained(&self->_delegate), v10 = [WeakRetained scrubberView:self shouldIgnoreHitTest:v7 withEvent:{x, y}], WeakRetained, (v10 & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PUScrubberView;
    v11 = [(PUScrubberView *)&v13 hitTest:v7 withEvent:x, y];
  }

  return v11;
}

- (BOOL)playbackTimeIndicatorTileViewControllerCanFlashIndicator:(id)a3
{
  v4 = [a3 presentationLayoutInfo];
  v5 = [(PUScrubberView *)self _tilingView];
  v6 = [v4 indexPath];
  v7 = [v4 dataSourceIdentifier];
  v8 = [v5 presentedTileControllerWithIndexPath:v6 kind:@"PUTileKindItemContent" dataSourceIdentifier:v7];

  v9 = [v8 presentationLayoutInfo];

  if (v9)
  {
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v9 coordinateSystem];
    v19 = [v5 contentCoordinateSystem];
    v20 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v18, v19, v11, v13);
    v22 = v21;

    [(PUScrubberView *)self convertRect:v5 fromView:v20, v22, v15, v17];
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

- (void)videoScrubberController:(id)a3 desiredSeekTime:(id *)a4
{
  v6 = [(PUScrubberView *)self browsingSession];
  v7 = [v6 viewModel];

  v8 = [(PUScrubberView *)self _expandedItemType];
  if (v8 == 2)
  {
    v13 = [v7 currentAssetReference];
    v14 = [v7 assetViewModelForAssetReference:v13];
    v12 = [v14 videoPlayer];

    v15 = *&a4->var0;
    var3 = a4->var3;
    [v12 setDesiredSeekTime:&v15];
    goto LABEL_5;
  }

  if (v8 == 3)
  {
    v9 = [v7 currentAssetReference];
    v10 = [v7 assetViewModelForAssetReference:v9];
    v11 = [v10 irisPlayer];

    [(PUScrubberView *)self _invalidateScrubberLayout];
    [(PUScrubberView *)self updateIfNeeded];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__PUScrubberView_videoScrubberController_desiredSeekTime___block_invoke;
    v17[3] = &unk_1E7B7F720;
    v18 = v11;
    v19 = *&a4->var0;
    v20 = a4->var3;
    v12 = v11;
    [v12 performChanges:v17];

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

- (void)videoScrubberControllerDidUpdate:(id)a3
{
  v22 = a3;
  v4 = [(PUScrubberView *)self _tilingView];
  if (v4)
  {
    v5 = [(PUScrubberView *)self _scrubberLayout];
    [v5 expandedItemWidth];
    v7 = v6;
    [v22 length];
    v9 = v8;

    if (v7 != v9)
    {
      [(PUScrubberView *)self _invalidateScrubberLayout];
    }

    v10 = [(PUScrubberView *)self _scrubberLayout];
    v11 = [(PUScrubberView *)self _videoScrubberController];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 expandedItemIndexPath];

      if (v13)
      {
        [v22 playheadProgress];
        v15 = v14;
        v16 = [(PUScrubberView *)self _expandedAssetReference];
        v17 = [v16 asset];
        v18 = [v17 canPlayPhotoIris];

        if (v18)
        {
          [(PUScrubberView *)self _playheadProgressForIrisAssetReference:v16];
          v15 = v19;
        }

        v20 = [(PUScrubberView *)self _scrubberLayout];
        [v20 setExpandedItemPlayheadProgress:v15];

        if (![(PUScrubberView *)self _isDrivingPlayheadProgress]&& [(PUScrubberView *)self _expandedItemType]== 2)
        {
          v21 = [v4 _contentOffsetRoundingEnabled];
          [v4 _setContentOffsetRoundingEnabled:1];
          [(PUScrubberView *)self _updateScrollPositionAnimated:0];
          [v4 _setContentOffsetRoundingEnabled:v21];
        }
      }
    }
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSelectionManagerObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1426 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v12 = v9;
    v10 = [(PUScrubberView *)self _scrubberLayout];
    if ([v10 shouldHighlightSelectedItems])
    {
      [v10 invalidateSelectedItems];
    }

    v9 = v12;
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

- (void)_disableLayoutTransitionsForDuration:(double)a3
{
  [(PUScrubberView *)self _setLayoutTransitionsDisabledCount:[(PUScrubberView *)self _layoutTransitionsDisabledCount]+ 1];
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, (a3 * 1000000000.0));
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

- (void)_updateScrollPositionAnimated:(BOOL)a3
{
  v3 = a3;
  [(PUScrubberView *)self updateIfNeeded];
  v25 = [(PUScrubberView *)self _tilingView];
  [v25 layoutIfNeeded];
  v5 = [(PUScrubberView *)self _scrubberLayout];
  if ([(PUScrubberView *)self _isContentScrubbing])
  {
    v6 = [v5 expandedItemIndexPath];
    [v5 visibleRectForScrollingToItemAtIndexPath:v6 scrollPosition:2];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = [(PUScrubberView *)self browsingSession];
    v6 = [v15 viewModel];

    v16 = [v6 currentAssetReference];
    v17 = [v16 indexPath];
    if (v17)
    {
      [v6 currentAssetTransitionProgress];
      [v5 visibleRectForScrollingToItemAtIndexPath:v17 transitionProgress:?];
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
    v22 = [v5 coordinateSystem];
    v23 = [v25 contentCoordinateSystem];
    v24 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v22, v23, v8, v10);

    [v25 setContentOffset:v3 animated:{v24, 0.0}];
    if (v3)
    {
      [v25 px_cancelScrollGesture];
    }
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(PUScrubberView *)self _tilingView];
  if (v9)
  {
    if ([v8 chromeVisibilityDidChange])
    {
      if ([v7 isChromeVisible])
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

    v10 = [v7 currentAssetReference];
    v33 = a2;
    v34 = v10;
    if (v10)
    {
      v11 = v10;
      v12 = [v8 assetViewModelChangesByAssetReference];
      v13 = [v12 objectForKeyedSubscript:v11];

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
        v32 = v9;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v35 + 1) + 8 * i);
            v21 = [v20 videoPlayerChange];
            if ([v21 avPlayerDidChange] & 1) != 0 || (objc_msgSend(v21, "isActivatedDidChange"))
            {
              [(PUScrubberView *)self _invalidateScrubberLayout];

              v9 = v32;
              goto LABEL_30;
            }

            if (([v21 desiredPlayStateDidChange] & 1) != 0 || objc_msgSend(v21, "playStateDidChange"))
            {
              [(PUScrubberView *)self _invalidateScrubberLayout];
            }

            if ([v20 isDisplayingSearchQueryLabelChanged])
            {
              [(PUScrubberView *)self _invalidateScrubberLayout];
            }

            v22 = [v20 irisPlayerChange];
            if ([v22 activatedDidChange])
            {
              [(PUScrubberView *)self _invalidateScrubberLayoutEnsureTransition];
              [(PUScrubberView *)self _invalidateLoupeEffect];
            }

            if ([v22 scrubbingPhotoTimeDidChange])
            {
              [(PUScrubberView *)self _invalidateScrubberLayout];
            }

            v17 |= [v22 playingDidChange];
          }

          v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
          v9 = v32;
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

    if (([v8 currentAssetDidChange] & 1) != 0 || (objc_msgSend(v8, "currentAssetTransitionProgressDidChange") & 1) != 0 || objc_msgSend(v8, "transitionDriverIdentifierDidChange"))
    {
      v23 = [v7 transitionDriverIdentifier];
      if ([v23 isEqualToString:self->_transitionLayoutIdentifier])
      {

LABEL_37:
        [(PUScrubberView *)self _invalidateLoupeEffect];
        [(PUScrubberView *)self _invalidateScrubberLayoutEnsureTransition];
        v26 = 1;
        goto LABEL_39;
      }

      v24 = [v7 transitionDriverIdentifier];
      v25 = [v24 isEqualToString:@"PUBrowsingViewModelTransitionDriverIdentifierLivePhotoOverlay"];

      if (v25)
      {
        goto LABEL_37;
      }
    }

    v26 = 0;
LABEL_39:
    if ([v8 transitionDriverIdentifierDidChange])
    {
      [(PUScrubberView *)self _invalidateScrubberLayout];
    }

    if (([v8 currentAssetDidChange] & 1) != 0 || (objc_msgSend(v8, "isScrubbingDidChange") & 1) != 0 || objc_msgSend(v8, "isInSelectionModeDidChange"))
    {
      [(PUScrubberView *)self _invalidateScrubberLayout];
    }

    v27 = [v7 assetsDataSource];
    if (([v8 assetsDataSourceDidChange] | v17))
    {
      [(NSMutableDictionary *)self->_aspectRatioByIndexPath removeAllObjects];
      [(PUScrubberView *)self _setDecelerationTargetIndexPath:0];
      [(PUScrubberView *)self _invalidateScrubberLayoutEnsureTransition];
    }

    [(PUScrubberView *)self updateIfNeeded];
    v28 = [(PUScrubberView *)self _scrubberLayout];
    v29 = [v28 dataSource];
    v30 = [v27 isEqual:v29];

    if (v30)
    {
      if ((v26 & 1) == 0)
      {
LABEL_49:
        if (!-[PUScrubberView _isLibraryScrubbing](self, "_isLibraryScrubbing") && !-[PUScrubberView _isContentScrubbing](self, "_isContentScrubbing") && (([v8 currentAssetDidChange] & 1) != 0 || (objc_msgSend(v8, "currentAssetTransitionProgressDidChange") & 1) != 0 || objc_msgSend(v8, "transitionDriverIdentifierDidChange")))
        {
          [(PUScrubberView *)self _setDecelerationTargetIndexPath:0];
          [(PUScrubberView *)self _updateScrollPositionAnimated:0];
        }
      }
    }

    else
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:v33 object:self file:@"PUScrubberView.m" lineNumber:1345 description:@"Session and layout data sources are out of sync."];

      if ((v26 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }
}

- (void)handleTouchGesture:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 == 1)
    {

      [(PUScrubberView *)self _handleUserScrollWillBegin:1];
    }
  }

  else
  {
    v5 = [(PUScrubberView *)self _tilingView];
    if (([v5 isDecelerating] & 1) == 0 && (objc_msgSend(v5, "isDragging") & 1) == 0)
    {
      [(PUScrubberView *)self _endScrubbing];
    }
  }
}

- (void)_endScrubbing
{
  v3 = [(PUScrubberView *)self _tilingView];
  if (([v3 isTracking] & 1) == 0 && (objc_msgSend(v3, "isDecelerating") & 1) == 0 && (objc_msgSend(v3, "isDragging") & 1) == 0)
  {
    [(PUScrubberView *)self _setScrollViewSettled:1];
  }

  v4 = [(PUScrubberView *)self browsingSession];
  v5 = [v4 viewModel];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __31__PUScrubberView__endScrubbing__block_invoke;
  v16[3] = &unk_1E7B80DD0;
  v6 = v5;
  v17 = v6;
  [v6 performChanges:v16];
  if ([(PUScrubberView *)self _expandedItemType]== 3 || [(PUScrubberView *)self _expandedItemType]== 1)
  {
    v7 = [v6 currentAssetReference];
    v8 = [v6 assetViewModelForAssetReference:v7];
    v9 = [v8 irisPlayer];

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __31__PUScrubberView__endScrubbing__block_invoke_2;
    v14 = &unk_1E7B80DD0;
    v15 = v9;
    v10 = v9;
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

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(PUScrubberView *)self _endScrubbing];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v44 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1174 description:{@"Invalid parameter not satisfying: %@", @"[tilingView isKindOfClass:[PUTilingView class]]"}];
  }

  v8 = [(PUScrubberView *)self _scrubberLayout];
  v9 = [v8 expandedItemIndexPath];

  if (!v9)
  {
    [(PUScrubberView *)self _setHandlingScrollViewWillEndDragging:1];
    [(PUScrubberView *)self updateIfNeeded];
    x = a5->x;
    y = a5->y;
    [v8 focusPoint];
    v13 = v12;
    v15 = v14;
    v16 = [v8 coordinateSystem];
    v17 = [v44 contentCoordinateSystem];
    v18 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v16, v17, v13, v15);
    v20 = v19;

    [v44 contentOffset];
    v23 = x + v18 - v21;
    v24 = y + v20 - v22;
    v25 = [v44 contentCoordinateSystem];
    v26 = [v8 coordinateSystem];
    v27 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v25, v26, v23, v24);
    v29 = v28;

    v30 = [v8 indexPathOfItemClosestToPoint:{v27, v29}];
    if (v30)
    {
      v31 = [(PUScrubberView *)self _scrubberLayout];
      [v31 visibleRectForScrollingToItemAtIndexPath:v30 transitionProgress:0.0];
      v33 = v32;
      v35 = v34;
      v36 = [v31 coordinateSystem];
      v37 = [v44 contentCoordinateSystem];
      v38 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v36, v37, v33, v35);
      v40 = v39;
    }

    else
    {
      v38 = x;
      v40 = y;
    }

    if ((PUPointIsEqualToPointWithTolerance() & 1) == 0)
    {
      a5->x = v38;
      a5->y = v40;
    }

    [(PUScrubberView *)self _setDecelerationTargetIndexPath:v30];
    [(PUScrubberView *)self _setDecelerationTargetOffset:v38, v40];
    [v44 contentOffset];
    [(PUScrubberView *)self _setDecelerationDistance:hypot(v38 - v41, v40 - v42)];
    [(PUScrubberView *)self _setHandlingScrollViewWillEndDragging:0];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(PUScrubberView *)self _tilingView];

  if (v5 == v4)
  {

    [(PUScrubberView *)self _handleUserScrollWillBegin:0];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v8 = a3;
  v4 = [(PUScrubberView *)self _tilingView];

  v6 = v8;
  if (v4 == v8)
  {
    [(PUScrubberView *)self _invalidateLoupeEffect];
    if ([v8 isDragging] & 1) != 0 || (objc_msgSend(v8, "isDecelerating"))
    {
      v7 = 1;
    }

    else
    {
      v7 = [v8 isTracking];
    }

    v5 = [v8 pu_isPerformingScrollTest];
    v6 = v8;
    if ((v5 & 1) != 0 || v7 && ([(PUScrubberView *)self _isContentScrubbing]|| (v5 = [(PUScrubberView *)self _isLibraryScrubbing], v6 = v8, v5)))
    {
      v5 = [(PUScrubberView *)self _handleUserScrollWillBegin:0];
      v6 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (CGPoint)tilingView:(id)a3 initialVisibleOriginWithLayout:(id)a4
{
  v6 = a4;
  v7 = [(PUScrubberView *)self browsingSession];
  v8 = [v7 viewModel];

  v9 = [(PUScrubberView *)self _currentAssetsDataSource];
  v10 = [v6 dataSource];
  v11 = [v10 isEqual:v9];

  if ((v11 & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1123 description:{@"Invalid parameter not satisfying: %@", @"[[layout dataSource] isEqual:assetsDataSource]"}];
  }

  v12 = [v8 currentAssetReference];
  v13 = [v9 indexPathForAssetReference:v12];
  if (!v13 && v9)
  {
    if ([v9 isEmpty])
    {
LABEL_10:
      v14 = *MEMORY[0x1E695F058];
      v15 = *(MEMORY[0x1E695F058] + 8);
      goto LABEL_13;
    }

    v13 = [v9 firstItemIndexPath];
  }

  if (!v13)
  {
    goto LABEL_10;
  }

  if ([(PUScrubberView *)self _isLibraryScrubbing])
  {
    [(PUScrubberView *)self _scrubbingTransitionProgress];
  }

  else
  {
    [v8 currentAssetTransitionProgress];
  }

  [v6 visibleRectForScrollingToItemAtIndexPath:v13 transitionProgress:?];
  v14 = v16;
  v15 = v17;

LABEL_13:
  v18 = v14;
  v19 = v15;
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)tilingView:(id)a3 tileTransitionCoordinatorForLayoutInvalidationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 invalidatedExpandedItem])
  {
    v8 = [(PUTileTransitionCoordinator *)PUDefaultFrameChangeTileTransitionCoordinator defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:0 tilingView:v6];
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

  v11 = [(PUScrubberView *)self _expandedAssetReference];
  if (v11)
  {
    v12 = v11;
    v8 = 0;
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  v13 = [(PUScrubberView *)self _useSmoothingTransitionCoordinator];

  if (v13)
  {
    v8 = [(PUTileTransitionCoordinator *)PUDefaultFrameChangeTileTransitionCoordinator defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:0 tilingView:v6];
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

- (id)tilingView:(id)a3 tileTransitionCoordinatorForChangeFromFrame:(CGRect)a4 toFrame:(CGRect)a5 duration:(double)a6
{
  if (a6 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = [PUTileTransitionCoordinator defaultTileTransitionCoordinatorForFrameChangeWithTileCrossFade:0 tilingView:a3, a6, a4.origin.y, a4.size.width, a4.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  }

  return v6;
}

- (id)tilingView:(id)a3 tileTransitionCoordinatorForTransitionFromLayout:(id)a4 toLayout:(id)a5 withContext:(id)a6
{
  v7 = [PUTileTransitionCoordinator browsingTileTransitionCoordinatorForTransitionFromLayout:a4 toLayout:a5 withTilingView:a3 anchorAssetReference:0 context:a6];
  v8 = [(PUScrubberView *)self browsingSession];
  v9 = [v8 viewModel];
  v10 = [v9 transitionDriverIdentifier];

  v11 = [(PUScrubberView *)self _decelerationTargetIndexPath];

  if (v11)
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

  if (([v10 isEqual:self->_transitionLayoutIdentifier] & 1) != 0 || objc_msgSend(v10, "isEqual:", @"PUBrowsingViewModelTransitionDriverIdentifierLivePhotoOverlay"))
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

- (BOOL)layout:(id)a3 isItemAtAtIndexPathSelected:(id)a4
{
  v5 = a4;
  v6 = [(PUScrubberView *)self browsingSession];
  v7 = [v6 actionManager];
  v8 = [v7 px_selectionManager];
  v9 = [v8 selectionSnapshot];

  if (v9)
  {
    v10 = [v9 dataSource];
    v11 = [v10 identifier];
    v12 = [v5 section];
    v13 = [v5 item];

    v14 = [v9 selectedIndexPaths];
    v17[0] = v11;
    v17[1] = v12;
    v17[2] = v13;
    v17[3] = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [v14 containsIndexPath:v17];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)layout:(id)a3 shouldShowTimeIndicatorForExpandedItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(PUScrubberView *)self useEmbeddedVideoScrubber])
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v10 = [v7 dataSource];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1050 description:{@"Invalid parameter not satisfying: %@", @"[assetsDataSource isKindOfClass:[PUAssetsDataSource class]]"}];
    }

    v11 = [v10 assetAtIndexPath:v8];
    v9 = [v11 canPlayPhotoIris] ^ 1;
  }

  return v9;
}

- (float)layout:(id)a3 aspectRatioForItemAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUScrubberView *)self loupeAspectRatio];

  if (v9)
  {
    v10 = [(PUScrubberView *)self loupeAspectRatio];
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->_aspectRatioByIndexPath objectForKeyedSubscript:v8];
    if (!v10)
    {
      v11 = [v7 dataSource];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        [v22 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1030 description:{@"Invalid parameter not satisfying: %@", @"[assetsDataSource isKindOfClass:[PUAssetsDataSource class]]"}];
      }

      v12 = [v11 assetAtIndexPath:v8];
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
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        [v21 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1033 description:{@"Asset:%@ must provide a valid aspect ratio, got:%f.", v12, v14}];
      }

      *&v13 = v14;
      v10 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      [(NSMutableDictionary *)self->_aspectRatioByIndexPath setObject:v10 forKeyedSubscript:v8];
    }
  }

  [v10 floatValue];
  v19 = v18;

  return v19;
}

- (id)tilingView:(id)a3 tileControllerWithIndexPath:(id)a4 kind:(id)a5 dataSource:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(PUScrubberView *)self browsingSession];
  v15 = [v14 viewModel];

  v16 = [v15 assetsDataSource];
  v17 = [v13 isEqual:v16];

  if ((v17 & 1) == 0)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:967 description:{@"Invalid parameter not satisfying: %@", @"[dataSource isEqual:assetsDataSource]"}];
  }

  if ([v12 isEqualToString:@"PUTileKindItemContent"])
  {
    v59 = v10;
    v18 = [(PUScrubberView *)self browsingSession];
    [v18 mediaProvider];
    v20 = v19 = self;

    v21 = [v16 assetReferenceAtIndexPath:v11];
    v22 = [v15 assetViewModelForAssetReference:v21];
    v58 = v19;
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
        v36 = v15;
        v37 = v16;
        v38 = v12;
        v40 = v39 = v11;
        [v24 setPlaceholderColor:v40];

        v11 = v39;
        v12 = v38;
        v16 = v37;
        v15 = v36;
      }

      v10 = v59;
      goto LABEL_17;
    }

    v25 = [v22 asset];
    if ([v25 mediaType] == 2)
    {
    }

    else
    {
      [v22 asset];
      v56 = v15;
      v30 = v16;
      v31 = v12;
      v33 = v32 = v11;
      v34 = [v33 canPlayPhotoIris];

      v11 = v32;
      v12 = v31;
      v16 = v30;
      v15 = v56;

      if ((v34 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v23 = PUFilmstripTileViewReuseIdentifier;
    goto LABEL_14;
  }

  if ([v12 isEqualToString:@"PUTileKindPlayhead"])
  {
    v24 = [v10 dequeueTileControllerWithReuseIdentifier:@"PUPlayheadTileViewReuseIdentifier"];
    goto LABEL_18;
  }

  if ([v12 isEqualToString:@"PUTileKindPlaybackTimeIndicator"])
  {
    v26 = [v16 assetReferenceAtIndexPath:v11];
    [v15 assetViewModelForAssetReference:v26];
    v28 = v27 = v11;
    v29 = [v28 videoPlayer];
    v24 = [v10 dequeueTileControllerWithReuseIdentifier:@"PUPlaybackTimeIndicatorTileViewReuseIdentifier"];
    [v24 setDelegate:self];
    [v24 setVideoPlayer:v29];
    [v24 setViewModel:v15];

    v11 = v27;
    goto LABEL_18;
  }

  if ([v12 isEqualToString:@"PUTileKindVideoHighlightStrip"])
  {
    v24 = [v10 dequeueTileControllerWithReuseIdentifier:@"PUVideoHighlightStripTileViewControllerReuseIdentifier"];
    v58 = self;
    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_25:
        v42 = [v16 assetReferenceAtIndexPath:v11];
        [v15 assetViewModelForAssetReference:v42];
        v44 = v43 = v11;
        [v24 setAssetViewModel:v44];
        v45 = +[PUOneUpSettings sharedInstance];
        v46 = [v45 videoHighlightColor];
        [v24 setHighlightColor:v46];

        v11 = v43;
LABEL_17:
        self = v58;
LABEL_18:
        if (v24)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }

      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      v54 = objc_opt_class();
      v53 = NSStringFromClass(v54);
      v55 = [v24 px_descriptionForAssertionMessage];
      [v49 handleFailureInMethod:a2 object:v58 file:@"PUScrubberView.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[tilingView dequeueTileControllerWithReuseIdentifier:PUVideoHighlightStripTileViewControllerReuseIdentifier]", v53, v55}];
    }

    else
    {
      v49 = [MEMORY[0x1E696AAA8] currentHandler];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = self;
      v53 = v51;
      [v49 handleFailureInMethod:a2 object:v52 file:@"PUScrubberView.m" lineNumber:1005 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[tilingView dequeueTileControllerWithReuseIdentifier:PUVideoHighlightStripTileViewControllerReuseIdentifier]", v51}];
    }

    goto LABEL_25;
  }

LABEL_26:
  v47 = [MEMORY[0x1E696AAA8] currentHandler];
  [v47 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:1014 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];

  v24 = 0;
LABEL_19:

  return v24;
}

- (double)_playheadProgressForIrisAssetReference:(id)a3
{
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v5 canPlayPhotoIris];

  v7 = 0.0;
  if (v6)
  {
    v8 = [(PUScrubberView *)self browsingSession];
    v9 = [v8 viewModel];

    v10 = [v9 assetViewModelForAssetReference:v4];
    v11 = [v10 irisPlayer];

    memset(&v16[1], 0, sizeof(CMTime));
    if (v11)
    {
      [v11 currentPhotoTime];
      memset(v16, 0, 24);
      [v11 currentVideoDuration];
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
    v3 = +[PUOneUpSettings sharedInstance];
    [v3 autoplayScrubberWidth];
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

    v8 = [(PUScrubberView *)self _videoScrubberController];

    if (!v8)
    {
      v10 = [(PUScrubberView *)self browsingSession];
      v11 = [v10 viewModel];
      v12 = [v11 currentAssetReference];
      v13 = [v12 asset];

      [v13 duration];
      [(PUScrubberView *)self _lengthForDuration:?];
      v9 = v14;

      return v9;
    }

    v3 = [(PUScrubberView *)self _videoScrubberController];
    [v3 length];
  }

  v9 = v4;

  return v9;
}

- (void)_updateScrubbingAwayFromContentEdgeBeganDragging:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUScrubberView *)self _videoScrubberController];

  if (v5)
  {
    v6 = [(PUScrubberView *)self _videoScrubberController];
    [v6 playheadProgress];
    v8 = v7 >= 0.99 || v7 <= 0.00999999978;
    if (v3 && v8 && [(PUScrubberView *)self _scrollViewSettled])
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
    v3 = [(PUScrubberView *)self _tilingView];
    v4 = [(PUScrubberView *)self browsingSession];
    v5 = [v4 viewModel];

    v6 = [(PUScrubberView *)self _currentAssetsDataSource];
    v7 = [v5 currentAssetReference];
    v107 = [v7 indexPath];
    v8 = [v5 assetViewModelForAssetReference:v7];
    v9 = [v8 videoPlayer];
    v10 = [v8 irisPlayer];
    v106 = [v8 isDisplayingSearchQueryLabel];
    v11 = &OBJC_IVAR___PUPhotosAlbumViewController__album;
    if (-[PUScrubberView _areLayoutTransitionsDisabled](self, "_areLayoutTransitionsDisabled") && !self->_scrubberLayoutNeedsTransition && ![v5 isChromeVisible])
    {
LABEL_98:

      return;
    }

    v98 = v8;
    v12 = [v9 avPlayer];
    v103 = v10;
    v101 = v5;
    v99 = v7;
    if ([v5 isScrubbing] && -[PUScrubberView _isLibraryScrubbing](self, "_isLibraryScrubbing"))
    {
      v13 = 0;
      goto LABEL_22;
    }

    v14 = v12;
    v15 = [v7 asset];
    v16 = [v15 playbackStyle];

    if (v16 == 5)
    {
      v17 = 0;
LABEL_16:
      v12 = v14;
LABEL_17:
      v11 = &OBJC_IVAR___PUPhotosAlbumViewController__album;
LABEL_18:
      if (v12)
      {
        [(PUScrubberView *)self _setExpandedItemType:v17];
        goto LABEL_23;
      }

      if (([v10 isActivated] & 1) == 0)
      {
        [(PUScrubberView *)self _setExpandedItemType:v17];
        goto LABEL_32;
      }

      v12 = [v10 videoPlayer];
      v13 = 3;
LABEL_22:
      [(PUScrubberView *)self _setExpandedItemType:v13];
      if (v12)
      {
LABEL_23:
        v104 = v12;
        v20 = [(PUScrubberView *)self _videoScrubberController];
        v21 = [v20 target];
        v22 = [v21 videoPlayer];

        if (v22 != v104)
        {
          v23 = [v7 asset];
          [v23 duration];
          Seconds = v24;
          if ([v23 canPlayPhotoIris])
          {
            memset(&v109, 0, sizeof(v109));
            if (v23)
            {
              [v23 photoIrisVideoDuration];
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
          v30 = [(PUScrubberView *)self _expandedAssetReference];
          v31 = [(PUScrubberView *)self type];
          v105 = +[PUScrubberSettings sharedInstance];
          v32 = [(PUScrubberView *)self _scrubberLayout];
          v33 = v32;
          v34 = v11[877];
          if (*(&self->super.super.super.isa + v34) == 1)
          {
            *(&self->super.super.super.isa + v34) = 0;
            v29 = 1;
          }

          v97 = v9;
          v100 = v6;
          if (v32)
          {
            v35 = [v32 dataSource];
            v36 = [v35 identifier];
            v37 = [v6 identifier];
            v38 = [v36 isEqualToString:v37] ^ 1;

            v39 = v38 | v29;
          }

          else
          {
            v39 = 1;
          }

          v102 = v3;
          v40 = [v30 indexPath];
          v41 = [v33 expandedItemIndexPath];
          v42 = v41;
          if (v40 == v41)
          {
          }

          else
          {
            v43 = [v30 indexPath];
            v44 = [v33 expandedItemIndexPath];
            v45 = [v43 isEqual:v44];

            if (!v45)
            {
              v39 = 1;
            }
          }

          v46 = (v31 == 1) ^ [v33 onlyShowExpandedItem];
          [(PUScrubberView *)self _expandedItemWidth];
          v48 = v47;
          [v33 expandedItemWidth];
          v51 = v48 != v49 && v30 != 0;
          v52 = v46 | v39;
          v53 = [(PUScrubberView *)self _decelerationTargetIndexPath];
          v54 = [v107 isEqual:v53];
          v55 = v53;
          if ((v54 & 1) != 0 || v53 && !-[PUScrubberView _isHandlingScrollViewWillEndDragging](self, "_isHandlingScrollViewWillEndDragging") && ([v105 decelerationTargetExpansionDistance], v57 > 0.0) && (objc_msgSend(v102, "contentOffset"), v59 = v58, v61 = v60, -[PUScrubberView _decelerationTargetOffset](self, "_decelerationTargetOffset"), v64 = hypot(v62 - v59, v63 - v61), objc_msgSend(v105, "decelerationTargetExpansionDistance"), v55 = v53, v64 < v65) || -[PUScrubberView _useLoupe](self, "_useLoupe") && (v66 = -[PUScrubberView _isLibraryScrubbing](self, "_isLibraryScrubbing"), v55 = v107, v66))
          {
            v56 = v55;
          }

          else
          {
            v56 = 0;
          }

          v67 = v51 | v52;
          v68 = [v33 overrideLoupeIndexPath];
          if (v68 != v56)
          {
            v69 = [v33 overrideLoupeIndexPath];
            v70 = [v69 isEqual:v56] ^ 1;

            v67 |= v70;
          }

          v71 = [(PUScrubberView *)self _useLoupe];
          if (v56)
          {
            v72 = 1;
          }

          else
          {
            v72 = v71;
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
          v76 = v74 != v73 && v30 == 0;
          if ([(PUScrubberView *)self useThinLoupe])
          {
            [(PUScrubberView *)self slitAspectRatio];
          }

          else
          {
            [v105 maxAspectRatio];
          }

          v78 = v77;
          v6 = v100;
          [v33 maxAspectRatio];
          v80 = v79;
          if (v106)
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

            v85 = [v30 indexPath];
            [v84 setExpandedItemIndexPath:v85];

            [v84 setOnlyShowExpandedItem:v31 == 1];
            [(PUScrubberView *)self _setScrubberLayout:v84];
            v33 = v84;
          }

          v5 = v101;
          v3 = v102;
          v86 = -24.0;
          if (!v106)
          {
            v86 = 0.0;
          }

          [v33 setTimeIndicatorVerticalOffset:v86];
          [v33 setMaxAspectRatio:v78];
          [v33 setOverrideLoupeIndexPath:v56];
          [v33 setLoupeAmount:v73];
          [v33 setExpandedItemWidth:v48];
          [v33 setShouldHighlightSelectedItems:{objc_msgSend(v101, "isInSelectionMode")}];
          v87 = [(PUScrubberView *)self _expandedItemType];
          if (v87 == 3)
          {
            v88 = [v103 isPlaying] ^ 1;
          }

          else
          {
            v88 = v87 == 2;
          }

          [v33 setShowPlayheadForExpandedItem:v88];
          v89 = [(PUScrubberView *)self _expandedItemType];
          v90 = 0.0;
          if (v89 > 2)
          {
            if (v89 == 3)
            {
              [(PUScrubberView *)self _playheadProgressForIrisAssetReference:v30];
              v90 = v93;
              goto LABEL_95;
            }

            if (v89 != 4)
            {
LABEL_95:
              [v33 setExpandedItemPlayheadProgress:v90];
              [v33 setSnapToExpandedItem:{-[PUScrubberView _allowExitFromContentScrubbing](self, "_allowExitFromContentScrubbing") ^ 1}];
              v94 = [v102 layout];

              if (v94 != v33)
              {
                v95 = [(PUScrubberView *)self _useSmoothingTransitionCoordinator];
                [(PUScrubberView *)self _setUseSmoothingTransitionCoordinator:0];
                [v102 transitionToLayout:v33];
                [v102 layoutIfNeeded];
                [(PUScrubberView *)self _setUseSmoothingTransitionCoordinator:v95];
              }

              v8 = v98;
              v7 = v99;
              v9 = v97;
              v10 = v103;
              goto LABEL_98;
            }
          }

          else if (v89 >= 2)
          {
            if (v89 == 2)
            {
              v91 = [(PUScrubberView *)self _videoScrubberController];
              [v91 playheadProgress];
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

    v18 = [v7 asset];
    if ([v18 playbackStyle] == 4)
    {
      v19 = [(PUScrubberView *)self useEmbeddedVideoScrubber];

      if (v19)
      {
        v17 = 4;
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([v9 desiredPlayState] == 4)
    {
      v17 = 2;
      goto LABEL_16;
    }

    v12 = v14;
    if ([v9 isActivated])
    {
      v17 = 2;
      goto LABEL_17;
    }

    v11 = &OBJC_IVAR___PUPhotosAlbumViewController__album;
    if ([v9 desiredPlayState] == 3)
    {
      if ([(PUScrubberView *)self _isLibraryScrubbing])
      {
        v96 = [(PUScrubberView *)self _tilingView];
        if ([v96 isTracking] & 1) != 0 || (objc_msgSend(v96, "isDecelerating"))
        {

          goto LABEL_105;
        }
      }

      v17 = [v9 playState] != 5;
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

  v3 = [(PUScrubberView *)self browsingSession];
  v4 = [v3 viewModel];

  v5 = [v4 currentAssetReference];
  v6 = [v5 asset];
  v7 = [v4 assetViewModelForAssetReference:v5];
  v8 = [v7 videoPlayer];
  v9 = [v7 irisPlayer];
  if ([(PUScrubberView *)self _expandedItemType]== 4)
  {
    if ([v6 playbackStyle] != 4)
    {
LABEL_16:
      v11 = 0;
      goto LABEL_17;
    }
  }

  else if ((-[PUScrubberView _expandedItemType](self, "_expandedItemType") == 2 || -[PUScrubberView _expandedItemType](self, "_expandedItemType") == 1) && ([v6 isLivePhoto] & 1) == 0 && (objc_msgSend(v6, "canPlayPhotoIris") & 1) == 0)
  {
    if ([v6 playbackStyle] != 4 || (objc_msgSend(v8, "isActivated") & 1) == 0 && objc_msgSend(v8, "desiredPlayState") != 3)
    {
      goto LABEL_16;
    }
  }

  else if (-[PUScrubberView _expandedItemType](self, "_expandedItemType") != 3 || ![v9 isActivated])
  {
    goto LABEL_16;
  }

  v11 = v5;
LABEL_17:
  v10 = v11;

LABEL_18:

  return v10;
}

- (id)_currentAssetsDataSource
{
  v2 = [(PUScrubberView *)self browsingSession];
  v3 = [v2 viewModel];

  v4 = [v3 assetsDataSource];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[PUAssetsDataSource emptyDataSource];
  }

  v7 = v6;

  return v7;
}

- (double)_lengthForDuration:(double)a3
{
  v4 = +[PUScrubberSettings sharedInstance];
  [v4 minVideoDuration];
  if (v5 <= a3)
  {
    v5 = a3;
  }

  if (v5 >= 2.0)
  {
    v7 = v5;
    v6 = log2f(v7);
  }

  else
  {
    v6 = v5 * 0.5;
  }

  [v4 baseVideoWidth];
  v9 = v6 * v8;

  return v9;
}

- (void)_handleTapOnBrowsingIrisPlayer:(id)a3
{
  v3 = a3;
  if (([v3 isActivated] & 1) == 0)
  {
    if (v3)
    {
      [v3 currentVideoDuration];
      if ((v11 & 0x100000000) != 0)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __49__PUScrubberView__handleTapOnBrowsingIrisPlayer___block_invoke;
        v9[3] = &unk_1E7B80DD0;
        v4 = v10;
        v5 = v3;
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

  if ([v3 isActivated])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__PUScrubberView__handleTapOnBrowsingIrisPlayer___block_invoke_2;
    v7[3] = &unk_1E7B80DD0;
    v4 = &v8;
    v5 = v3;
    v8 = v5;
    v6 = v7;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleTapOnBrowsingVideoPlayer:(id)a3
{
  v3 = a3;
  v4 = [v3 asset];
  if (([v4 canPlayLoopingVideo] & 1) == 0)
  {
    v5 = +[PUOneUpSettings sharedInstance];
    v6 = [v5 allowAutoplayVideoForAsset:v4];

    if (v6)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __50__PUScrubberView__handleTapOnBrowsingVideoPlayer___block_invoke;
      v23[3] = &unk_1E7B80DD0;
      v7 = &v24;
      v8 = v3;
      v24 = v8;
      v9 = v23;
    }

    else
    {
      v10 = [v3 asset];
      v11 = [v10 canPlayLoopingVideo];

      if ((v11 & 1) == 0)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __50__PUScrubberView__handleTapOnBrowsingVideoPlayer___block_invoke_2;
        v21[3] = &unk_1E7B80DD0;
        v7 = &v22;
        v12 = v3;
        v22 = v12;
        [v12 performChanges:v21];
        v13 = +[PUOneUpSettings sharedInstance];
        v14 = [v13 allowPlayButtonInBars];

        if (v14)
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
      v8 = v3;
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

- (void)_handleTap:(id)a3
{
  v4 = a3;
  v5 = [(PUScrubberView *)self _tilingView];
  v6 = [(PUScrubberView *)self browsingSession];
  v7 = [v6 viewModel];

  v8 = [v7 assetsDataSource];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__77962;
  v32 = __Block_byref_object_dispose__77963;
  v33 = 0;
  [v4 locationInView:v5];
  v10 = v9;
  v12 = v11;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __29__PUScrubberView__handleTap___block_invoke;
  v25[3] = &unk_1E7B7DD60;
  v13 = v8;
  v26 = v13;
  v27 = &v28;
  [v5 enumeratePresentedTileControllersInRect:v25 usingBlock:{v10, v12, 1.0, 1.0}];
  if (v29[5])
  {
    v14 = [v13 assetReferenceAtIndexPath:?];
    v15 = [v7 currentAssetReference];
    v16 = [v15 isEqual:v14];

    if (v16)
    {
      v17 = [v7 assetViewModelForAssetReference:v14];
      v18 = [v17 videoPlayer];
      v19 = [v17 irisPlayer];
      v20 = v19;
      if (v18)
      {
        [(PUScrubberView *)self _handleTapOnBrowsingVideoPlayer:v18];
      }

      else if (v19)
      {
        [(PUScrubberView *)self _handleTapOnBrowsingIrisPlayer:v19];
      }
    }

    else
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __29__PUScrubberView__handleTap___block_invoke_2;
      v21[3] = &unk_1E7B809F0;
      v22 = v7;
      v23 = v14;
      v24 = self;
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

- (void)_handleUserScrollWillBegin:(BOOL)a3
{
  v3 = a3;
  [(PUScrubberView *)self _setIsHandlingUserScroll:1];
  [(PUScrubberView *)self _updateScrubbingAwayFromContentEdgeBeganDragging:v3];
  if (v3)
  {
    [(PUScrubberView *)self _setDecelerationTargetIndexPath:0];
  }

  v6 = [(PUScrubberView *)self _tilingView];
  if (([v6 isDragging] & 1) != 0 || objc_msgSend(v6, "isDecelerating"))
  {
    [(PUScrubberView *)self _setScrollViewSettled:0];
  }

  v7 = [(PUScrubberView *)self _scrubberLayout];
  v8 = [(PUScrubberView *)self _currentAssetsDataSource];
  v9 = [v7 dataSource];
  v10 = v9;
  if (v9 != v8)
  {
    v11 = [v9 isEqual:v8];

    if (v11)
    {
      goto LABEL_10;
    }

    [(PUScrubberView *)self updateIfNeeded];
    v12 = [(PUScrubberView *)self _tilingView];
    [v12 layoutIfNeeded];

    v13 = [(PUScrubberView *)self _scrubberLayout];

    [(PUScrubberView *)self _currentAssetsDataSource];
    v8 = v10 = v8;
    v7 = v13;
  }

LABEL_10:
  v14 = [v7 dataSource];
  if (([v14 isEqual:v8] & 1) == 0)
  {
    v15 = [v7 dataSource];

    if (v15 == v8)
    {
      goto LABEL_14;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"[scrubberLayout.dataSource isEqual:assetsDataSource] || scrubberLayout.dataSource == assetsDataSource"}];
  }

LABEL_14:
  v16 = [(PUScrubberView *)self _videoScrubberController];
  if (!v16)
  {
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    goto LABEL_26;
  }

  v17 = v16;
  v18 = [v7 expandedItemIndexPath];

  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  if (!v18)
  {
    goto LABEL_26;
  }

  if (v3)
  {
    v19 = [(PUScrubberView *)self _tilingView];
    v20 = [v19 panGestureRecognizer];
    v21 = [(PUScrubberView *)self _tilingView];
    [v20 locationInView:v21];

    PXRectWithCenterAndSize();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [(PUScrubberView *)self browsingSession];
    v31 = [v30 viewModel];
    v32 = [v31 currentAssetReference];
    v33 = [v32 indexPath];

    v34 = [(PUScrubberView *)self _tilingView];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __45__PUScrubberView__handleUserScrollWillBegin___block_invoke;
    v60[3] = &unk_1E7B7DD60;
    v35 = v33;
    v61 = v35;
    v62 = &v63;
    [v34 enumeratePresentedTileControllersInRect:v60 usingBlock:{v23, v25, v27, v29}];

    v36 = [(PUScrubberView *)self browsingSession];
    v37 = [v36 viewModel];
    v38 = [v37 assetViewModelForCurrentAssetReference];
    v39 = [v38 videoPlayer];

    if (*(v64 + 24) == 1)
    {
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __45__PUScrubberView__handleUserScrollWillBegin___block_invoke_2;
      v58[3] = &unk_1E7B80DD0;
      v59 = v39;
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
    [v7 currentItemFocusProgress];
    v42 = v41;
    v35 = [(PUScrubberView *)self _videoScrubberController];
    [v35 setPlayheadProgress:v42];
LABEL_25:
  }

LABEL_26:
  v43 = [v7 currentItemIndexPath];
  v44 = [v7 expandedItemIndexPath];
  if ([v43 isEqual:v44])
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
  if (v43)
  {
    [v7 currentItemTransitionProgress];
    [(PUScrubberView *)self _setScrubbingTransitionProgress:?];
    v48 = [v8 assetReferenceAtIndexPath:v43];
    if (!v48)
    {
      v53 = [MEMORY[0x1E696AAA8] currentHandler];
      [v53 handleFailureInMethod:a2 object:self file:@"PUScrubberView.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"assetReference != nil"}];
    }

    v49 = [(PUScrubberView *)self browsingSession];
    v50 = [v49 viewModel];

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __45__PUScrubberView__handleUserScrollWillBegin___block_invoke_3;
    v54[3] = &unk_1E7B809F0;
    v51 = v50;
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

  v3 = [(PUScrubberView *)self _tilingView];
  if ([v3 isTracking])
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
  v3 = [(PUScrubberView *)self _tilingView];
  if (-[PUScrubberView _isHandlingUserScroll](self, "_isHandlingUserScroll") || ([v3 isTracking] & 1) != 0 || (objc_msgSend(v3, "isDecelerating") & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isDragging];
  }

  return v4;
}

- (BOOL)_isContentScrubbing
{
  v3 = [(PUScrubberView *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 transitionDriverIdentifier];

  v6 = [(PUScrubberView *)self _scrubberLayout];
  if ([v5 isEqualToString:self->_contentScrubbingIdentifier])
  {
    v7 = [(PUScrubberView *)self _videoScrubberController];
    if (v7)
    {
      v8 = [v6 expandedItemIndexPath];
      v9 = v8 != 0;
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
  v2 = self;
  v3 = [(PUScrubberView *)self browsingSession];
  v4 = [v3 viewModel];
  v5 = [v4 transitionDriverIdentifier];

  LOBYTE(v2) = [v5 isEqualToString:v2->_scrubbingIdentifier];
  return v2;
}

- (id)_newScrubberLayoutWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(PUSectionedTilingLayout *)[PUScrubberTilingLayout alloc] initWithDataSource:v4];

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
  v3 = [(PUScrubberView *)self _tilingView];
  if (!v3)
  {
    v4 = [PUTilingView alloc];
    [(PUScrubberView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(PUScrubberView *)self _scrubberLayout];
    v22 = [(PUTilingView *)v4 initWithFrame:v13 layout:v6, v8, v10, v12];

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
    v3 = v22;
  }

  v23 = v3;
  v14 = [v3 layout];
  [v23 bounds];
  v16 = v15;
  [v14 slitAspectRatio];
  v18 = v17 * v16;
  [v14 interItemSpacing];
  v20 = (v18 + v19) * -3.0;
  v21 = 0.0;
  if (v20 <= 0.0)
  {
    v21 = v20;
  }

  [v23 setLoadingInsets:{0.0, v21, 0.0, v21}];
}

- (void)_setTilingView:(id)a3
{
  v5 = a3;
  tilingView = self->__tilingView;
  if (tilingView != v5)
  {
    v12 = v5;
    [(PUTilingView *)tilingView setTileSource:0];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:0];
    [(PUTilingView *)self->__tilingView setScrollDelegate:0];
    [(PUTilingView *)self->__tilingView setDelegate:0];
    objc_storeStrong(&self->__tilingView, a3);
    [(PUTilingView *)self->__tilingView setTileSource:self];
    [(PUTilingView *)self->__tilingView setTileTransitionDelegate:self];
    [(PUTilingView *)self->__tilingView setScrollDelegate:self];
    [(PUTilingView *)self->__tilingView setDelegate:self];
    v7 = [(PUScrubberView *)self browsingSession];
    [v7 configureTilingView:v12];

    v8 = [(PUScrubberView *)self _tapGestureRecognizer];
    v9 = [v8 view];
    v10 = self->__tilingView;

    if (v9 != v10)
    {
      v11 = [v8 view];
      [v11 removeGestureRecognizer:v8];

      [(PUTilingView *)self->__tilingView addGestureRecognizer:v8];
    }

    v5 = v12;
  }

  MEMORY[0x1EEE66BB8](tilingView, v5);
}

- (void)_setScrubbingAwayFromContentEdge:(BOOL)a3
{
  if (self->__isScrubbingAwayFromContentEdge != a3)
  {
    self->__isScrubbingAwayFromContentEdge = a3;
    [(PUScrubberView *)self _invalidateSnapToExpandedItem];
  }
}

- (void)_setVideoScrubberController:(id)a3
{
  v5 = a3;
  videoScrubberController = self->__videoScrubberController;
  if (videoScrubberController != v5)
  {
    v7 = v5;
    [(PXVideoScrubberController *)videoScrubberController setDelegate:0];
    objc_storeStrong(&self->__videoScrubberController, a3);
    videoScrubberController = [(PXVideoScrubberController *)v7 setDelegate:self];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](videoScrubberController, v5);
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
    v5 = [v4 interactiveLoupeBehavior];

    v10 = [(PUScrubberView *)self _tilingView];
    if ([v10 isDecelerating] && !objc_msgSend(v10, "isTracking") || -[PUScrubberView _isHandlingScrollViewWillEndDragging](self, "_isHandlingScrollViewWillEndDragging") || objc_msgSend(v10, "isDragging") && !v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v10 pu_isPerformingScrollTest] ^ 1;
    }

    [(PUScrubberView *)self _setUseLoupe:v6];
    if (([v10 isDragging] & 1) != 0 || objc_msgSend(v10, "isDecelerating"))
    {
      v7 = [(PUScrubberView *)self _decelerationTargetIndexPath];
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5 == 1;
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

- (void)_setDecelerationTargetIndexPath:(id)a3
{
  v5 = a3;
  decelerationTargetIndexPath = self->__decelerationTargetIndexPath;
  if (decelerationTargetIndexPath != v5)
  {
    v7 = v5;
    decelerationTargetIndexPath = [decelerationTargetIndexPath isEqual:v5];
    v5 = v7;
    if ((decelerationTargetIndexPath & 1) == 0)
    {
      objc_storeStrong(&self->__decelerationTargetIndexPath, a3);
      [(PUScrubberView *)self _invalidateLoupeEffect];
      decelerationTargetIndexPath = [(PUScrubberView *)self _invalidateScrubberLayout];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](decelerationTargetIndexPath, v5);
}

- (void)_setHandlingScrollViewWillEndDragging:(BOOL)a3
{
  if (self->__isHandlingScrollViewWillEndDragging != a3)
  {
    self->__isHandlingScrollViewWillEndDragging = a3;
    [(PUScrubberView *)self _invalidateLoupeEffect];

    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)_setSnapToExpandedItem:(BOOL)a3
{
  if (self->__snapToExpandedItem != a3)
  {
    self->__snapToExpandedItem = a3;
    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)setUseThinLoupe:(BOOL)a3
{
  if (self->_useThinLoupe != a3)
  {
    self->_useThinLoupe = a3;
    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)_setUseLoupe:(BOOL)a3
{
  if (self->__useLoupe != a3)
  {
    self->__useLoupe = a3;
    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)cancelDeceleration
{
  v3 = [(PUScrubberView *)self _tilingView];
  v4 = [v3 isDecelerating];

  if (v4)
  {
    v6 = [(PUScrubberView *)self _tilingView];
    v5 = [(PUScrubberView *)self _tilingView];
    [v5 contentOffset];
    [v6 setContentOffset:0 animated:?];
  }
}

- (void)endPreviewing
{
  [(PUScrubberView *)self _endScrubbing];
  v3 = [(PUScrubberView *)self browsingSession];
  v4 = [v3 viewModel];

  [(PUScrubberView *)self _updateScrollPositionAnimated:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__PUScrubberView_endPreviewing__block_invoke;
  v6[3] = &unk_1E7B80C38;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 performChanges:v6];
}

void __31__PUScrubberView_endPreviewing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetsDataSource];
  v3 = [v2 startingAssetReference];

  [*(a1 + 32) setCurrentAssetReference:v3 transitionProgress:*(*(a1 + 40) + 408) transitionDriverIdentifier:0 animated:0.0];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToShouldIgnoreHitTestWithEvent = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setType:(int64_t)a3
{
  if (self->_type != a3)
  {
    self->_type = a3;
    [(PUScrubberView *)self _invalidateScrubberLayout];
  }
}

- (void)setSelectionManager:(id)a3
{
  v5 = a3;
  selectionManager = self->_selectionManager;
  if (selectionManager != v5)
  {
    v7 = v5;
    [(PXSectionedSelectionManager *)selectionManager unregisterChangeObserver:self context:PXSelectionManagerObservationContext];
    objc_storeStrong(&self->_selectionManager, a3);
    selectionManager = [(PXSectionedSelectionManager *)self->_selectionManager registerChangeObserver:self context:PXSelectionManagerObservationContext];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](selectionManager, v5);
}

- (void)setBrowsingSession:(id)a3
{
  v5 = a3;
  browsingSession = self->_browsingSession;
  v13 = v5;
  if (browsingSession != v5)
  {
    v7 = [(PUBrowsingSession *)browsingSession viewModel];
    [v7 unregisterChangeObserver:self];

    objc_storeStrong(&self->_browsingSession, a3);
    v8 = [(PUBrowsingSession *)self->_browsingSession viewModel];
    [v8 registerChangeObserver:self];

    [(NSMutableDictionary *)self->_aspectRatioByIndexPath removeAllObjects];
    [(PUScrubberView *)self _setDecelerationTargetIndexPath:0];
    [(PUScrubberView *)self _invalidateLoupeEffect];
    [(PUScrubberView *)self _invalidateScrubberLayout];
    [(PUScrubberView *)self _invalidateSnapToExpandedItem];
    v9 = [(PUBrowsingSession *)v13 actionManager];
    v10 = [v9 px_selectionManager];
    [(PUScrubberView *)self setSelectionManager:v10];

    v11 = [(PUScrubberView *)self _tilingView];

    if (v11)
    {
      v12 = [(PUScrubberView *)self _tilingView];
      [(PUBrowsingSession *)v13 configureTilingView:v12];
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

- (PUScrubberView)initWithFrame:(CGRect)a3
{
  v36.receiver = self;
  v36.super_class = PUScrubberView;
  v3 = [(PUScrubberView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v12 = [v11 useDebuggingColors];

    if (v12)
    {
      v13 = [MEMORY[0x1E69DC888] yellowColor];
      [(PUScrubberView *)v4 setBackgroundColor:v13];
    }

    v14 = [objc_opt_class() description];
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];
    v17 = [v14 stringByAppendingString:v16];
    scrubbingIdentifier = v4->_scrubbingIdentifier;
    v4->_scrubbingIdentifier = v17;

    v19 = [objc_opt_class() description];
    v20 = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v20 UUIDString];
    v22 = [v19 stringByAppendingString:v21];
    contentScrubbingIdentifier = v4->_contentScrubbingIdentifier;
    v4->_contentScrubbingIdentifier = v22;

    v24 = [objc_opt_class() description];
    v25 = [MEMORY[0x1E696AFB0] UUID];
    v26 = [v25 UUIDString];
    v27 = [v24 stringByAppendingString:v26];
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