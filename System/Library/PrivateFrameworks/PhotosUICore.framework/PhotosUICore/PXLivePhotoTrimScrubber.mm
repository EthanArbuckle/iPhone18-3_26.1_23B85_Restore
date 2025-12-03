@interface PXLivePhotoTrimScrubber
+ (id)_createSnappingControllersForKeytimes:(id)keytimes;
+ (id)createSnappingControllerWithSnappingTarget:(double)target;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_clampTimeToViewportIfZoomed:(SEL)zoomed;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeAtLocation:(SEL)location forElement:(CGPoint)element;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeAtPoint:(SEL)point;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeForElement:(SEL)element;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)viewportMaxTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)viewportMinTime;
- (BOOL)isValidKeyTime:(id *)time;
- (BOOL)tryZoomAtTime:(id *)time;
- (CGRect)_disabledOverlayFrame;
- (CGRect)_keyHandleRect;
- (CGRect)loupeRect;
- (PXLivePhotoTrimScrubber)initWithFilmStripViewClass:(Class)class spec:(id)spec traitCollection:(id)collection;
- (PXLivePhotoTrimScrubberDelegate)delegate;
- (double)_offsetForTime:(id *)time;
- (double)horizontalOffsetForTime:(id *)time;
- (double)offsetForTime:(id *)time;
- (id)_snapTimesForElement:(int64_t)element;
- (id)_snappingControllersForElement:(int64_t)element;
- (int64_t)trimStatus;
- (void)_PXLivePhotoTrimScrubber_commonInit;
- (void)_animateChanges:(id)changes;
- (void)_assetDidLoadValues;
- (void)_newScrubberLayoutSubviews;
- (void)_presentControlsIfNeeded;
- (void)_releaseAVObjects;
- (void)_setContentAspectRatio:(double)ratio;
- (void)_setKeyTime:(id *)time canHaveImpact:(BOOL)impact forElement:(int64_t)element;
- (void)_setTrackingElement:(int64_t)element;
- (void)_setUntrimmedDuration:(id *)duration;
- (void)_setupZoom;
- (void)_updateContentAspectRatio;
- (void)_updateEndTimeSnappingControllers;
- (void)_updateFocusEventSnappingControllers;
- (void)_updateKeyTimeSnappingControllers;
- (void)_updateSpecDependentUI;
- (void)_updateStartTimeSnappingControllers;
- (void)_updateTrimHandles;
- (void)_updateZoomState:(BOOL)state;
- (void)_zoomAtTime:(id *)time;
- (void)_zoomAtTrackedElement;
- (void)_zoomDelayed;
- (void)handleBeginTrackingAtLocation:(CGPoint)location;
- (void)handleChangeTrackingAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity;
- (void)handleEndTracking:(BOOL)tracking;
- (void)handleLongPressWithElement:(int64_t)element;
- (void)handleSetKeyTime:(id *)time;
- (void)handleTapWithElement:(int64_t)element;
- (void)layoutSubviews;
- (void)performAnimatedChanges:(id)changes;
- (void)setAsset:(id)asset videoComposition:(id)composition;
- (void)setDelegate:(id)delegate;
- (void)setDisabled:(BOOL)disabled useTransparency:(BOOL)transparency;
- (void)setFocusEventTimes:(id)times;
- (void)setMinimumTrimLength:(id *)length;
- (void)setOriginalEndTime:(id *)time;
- (void)setOriginalStartTime:(id *)time;
- (void)setPlaceholderImage:(id)image;
- (void)setPlayheadStyle:(unint64_t)style animate:(BOOL)animate;
- (void)setShowVideoScrubberDebugOverlay:(BOOL)overlay;
- (void)setSnapKeyTimes:(id)times;
- (void)setSnapTrimEndTimes:(id)times;
- (void)setSnapTrimStartTimes:(id)times;
- (void)setSuggestedKeyTime:(id *)time;
- (void)setTrimEndTime:(id *)time;
- (void)setTrimStartTime:(id *)time;
- (void)setUseMiniScrubber:(BOOL)scrubber;
- (void)unzoom;
- (void)updateTraitCollection:(id)collection;
@end

@implementation PXLivePhotoTrimScrubber

- (void)setMinimumTrimLength:(id *)length
{
  var3 = length->var3;
  *&self->_minimumTrimLength.value = *&length->var0;
  self->_minimumTrimLength.epoch = var3;
}

- (PXLivePhotoTrimScrubberDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setOriginalEndTime:(id *)time
{
  var3 = time->var3;
  *&self->_originalEndTime.value = *&time->var0;
  self->_originalEndTime.epoch = var3;
}

- (void)setOriginalStartTime:(id *)time
{
  var3 = time->var3;
  *&self->_originalStartTime.value = *&time->var0;
  self->_originalStartTime.epoch = var3;
}

- (void)_releaseAVObjects
{
  if (objc_opt_respondsToSelector())
  {
    [(PXLivePhotoTrimScrubberFilmStripView *)self->_filmstripView _releaseAVObjects];
  }

  [(PXLivePhotoTrimScrubber *)self setLoupePlayerView:0];
}

- (CGRect)_disabledOverlayFrame
{
  trimStartHandle = [(PXLivePhotoTrimScrubber *)self trimStartHandle];
  [trimStartHandle frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIView *)self->_filmstripContainerView frame];
  v39.origin.x = v12;
  v39.origin.y = v13;
  v39.size.width = v14;
  v39.size.height = v15;
  v34.origin.x = v5;
  v34.origin.y = v7;
  v34.size.width = v9;
  v34.size.height = v11;
  v35 = CGRectUnion(v34, v39);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;

  trimEndHandle = [(PXLivePhotoTrimScrubber *)self trimEndHandle];
  [trimEndHandle frame];
  v40.origin.x = v21;
  v40.origin.y = v22;
  v40.size.width = v23;
  v40.size.height = v24;
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v37 = CGRectUnion(v36, v40);
  v25 = v37.origin.x;
  v26 = v37.origin.y;
  v27 = v37.size.width;
  v28 = v37.size.height;

  [(PXLivePhotoTrimScrubber *)self backingAlignedRectForRect:v25, v26, v27, v28];
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)_presentControlsIfNeeded
{
  if (!self->_hasPresentedControls)
  {
    [(PXLivePhotoTrimScrubber *)self untrimmedDuration];
    if (v4)
    {
      [(PXLivePhotoTrimScrubber *)self keyTime];
      if (v3)
      {
        self->_hasPresentedControls = 1;
        [(PXLivePhotoTrimScrubber *)self layoutIfNeeded];
        if ([(PXLivePhotoTrimScrubber *)self playheadStyle])
        {
          [(PXLivePhotoTrimScrubber *)self _setPhotoLoupeHidden:0 animated:1];
        }
      }
    }
  }
}

- (id)_snapTimesForElement:(int64_t)element
{
  if ((element - 3) < 2)
  {
    v5 = objc_opt_new();
    snapKeyTimes = [(PXLivePhotoTrimScrubber *)self snapKeyTimes];
    [v5 addObjectsFromArray:snapKeyTimes];

    [(PXLivePhotoTrimScrubber *)self suggestedKeyTime];
    if (v10[36])
    {
      v7 = MEMORY[0x1E696B098];
      [(PXLivePhotoTrimScrubber *)self suggestedKeyTime];
      v8 = [v7 valueWithCMTime:v10];
      [v5 addObject:v8];
    }

    [v5 addObjectsFromArray:self->_focusEventTimes];
  }

  else
  {
    if (element == 1)
    {
      snapTrimStartTimes = [(PXLivePhotoTrimScrubber *)self snapTrimStartTimes];
      goto LABEL_9;
    }

    if (element == 2)
    {
      snapTrimStartTimes = [(PXLivePhotoTrimScrubber *)self snapTrimEndTimes];
LABEL_9:
      v5 = snapTrimStartTimes;
      goto LABEL_11;
    }

    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (id)_snappingControllersForElement:(int64_t)element
{
  if ((element - 3) < 2)
  {
    v5 = objc_opt_new();
    [v5 addObjectsFromArray:self->_keyTimeSnappingControllers];
    [v5 addObjectsFromArray:self->_focusEventSnappingControllers];
    goto LABEL_9;
  }

  if (element == 1)
  {
    v4 = 464;
    goto LABEL_7;
  }

  if (element == 2)
  {
    v4 = 472;
LABEL_7:
    v5 = *(&self->super.super.super.isa + v4);
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)_updateFocusEventSnappingControllers
{
  v5 = self->_focusEventTimes;
  v3 = [objc_opt_class() _createSnappingControllersForKeytimes:v5];
  focusEventSnappingControllers = self->_focusEventSnappingControllers;
  self->_focusEventSnappingControllers = v3;
}

- (void)_updateEndTimeSnappingControllers
{
  snapTrimEndTimes = [(PXLivePhotoTrimScrubber *)self snapTrimEndTimes];
  v3 = [objc_opt_class() _createSnappingControllersForKeytimes:snapTrimEndTimes];
  endTimeSnappingControllers = self->_endTimeSnappingControllers;
  self->_endTimeSnappingControllers = v3;
}

- (void)_updateStartTimeSnappingControllers
{
  snapTrimStartTimes = [(PXLivePhotoTrimScrubber *)self snapTrimStartTimes];
  v3 = [objc_opt_class() _createSnappingControllersForKeytimes:snapTrimStartTimes];
  startTimeSnappingControllers = self->_startTimeSnappingControllers;
  self->_startTimeSnappingControllers = v3;
}

- (void)_updateKeyTimeSnappingControllers
{
  snapKeyTimes = [(PXLivePhotoTrimScrubber *)self snapKeyTimes];
  [(PXLivePhotoTrimScrubber *)self suggestedKeyTime];
  if (v9[36])
  {
    v4 = MEMORY[0x1E696B098];
    [(PXLivePhotoTrimScrubber *)self suggestedKeyTime];
    v5 = [v4 valueWithCMTime:v9];
    v6 = [snapKeyTimes arrayByAddingObject:v5];

    snapKeyTimes = v6;
  }

  v7 = [objc_opt_class() _createSnappingControllersForKeytimes:snapKeyTimes];
  keyTimeSnappingControllers = self->_keyTimeSnappingControllers;
  self->_keyTimeSnappingControllers = v7;
}

- (void)_setContentAspectRatio:(double)ratio
{
  if (self->__contentAspectRatio != ratio || ([(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe aspectRatio], v5 != ratio))
  {
    self->__contentAspectRatio = ratio;
    [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe setAspectRatio:ratio];

    [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
  }
}

- (void)_updateContentAspectRatio
{
  videoComposition = [(PXLivePhotoTrimScrubber *)self videoComposition];
  asset = [(PXLivePhotoTrimScrubber *)self asset];
  v5 = asset;
  if (videoComposition)
  {
    [videoComposition renderSize];
    v8 = v6 / v7;
    v9 = v7 == 0.0;
LABEL_3:
    if (v9)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v8;
    }

    goto LABEL_17;
  }

  tracks = [asset tracks];

  if (!tracks)
  {
    placeholderImage = [(PXLivePhotoTrimScrubber *)self placeholderImage];

    if (!placeholderImage)
    {
      v10 = 1.0;
      goto LABEL_17;
    }

    placeholderImage2 = [(PXLivePhotoTrimScrubber *)self placeholderImage];
    [placeholderImage2 size];
    v21 = v20;
    v23 = v22;

    v8 = v21 / v23;
    v9 = v23 == 0.0;
    goto LABEL_3;
  }

  v12 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v5];
  firstObject = [v12 firstObject];

  if (firstObject)
  {
    [firstObject naturalSize];
    v15 = v14;
    v17 = v16;
    memset(v25, 0, sizeof(v25));
    [firstObject preferredTransform];
    v26.size.width = v17 * 0.0 + 0.0 * v15;
    v26.size.height = v26.size.width;
    v26.origin.x = 0.0;
    v26.origin.y = 0.0;
    v27 = CGRectStandardize(v26);
    if (v27.size.height == 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v27.size.width / v27.size.height;
    }
  }

  else
  {
    v24 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_DEFAULT, "Did not find a video track falling back to 1.0 aspectRatio", v25, 2u);
    }

    v10 = 1.0;
  }

LABEL_17:
  [(PXLivePhotoTrimScrubber *)self _setContentAspectRatio:v10];
}

- (void)_setUntrimmedDuration:(id *)duration
{
  p_untrimmedDuration = &self->_untrimmedDuration;
  time1 = *duration;
  time2 = self->_untrimmedDuration;
  if (CMTimeCompare(&time1, &time2))
  {
    v6 = *&duration->var0;
    p_untrimmedDuration->epoch = duration->var3;
    *&p_untrimmedDuration->value = v6;
    *&v9.value = *&duration->var0;
    v9.epoch = duration->var3;
    layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
    time1 = v9;
    [layoutHelper setDuration:&time1];

    if ((duration->var2 & 1) == 0)
    {
      [(PXLivePhotoTrimScrubber *)self _setPhotoLoupeHidden:1 animated:0];
      [(PXLivePhotoTrimScrubber *)self _setTrimControlsHidden:1 animated:0];
      self->_hasPresentedControls = 0;
    }

    [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
    if (self->_delegateFlags.respondsToAssetDurationDidChange)
    {
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubberAssetDurationDidChange:self];
    }

    [(PXLivePhotoTrimScrubber *)self _presentControlsIfNeeded];
  }
}

- (void)_assetDidLoadValues
{
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Trim Scrubber - _assetDidLoadValues", buf, 2u);
  }

  asset = [(PXLivePhotoTrimScrubber *)self asset];
  v5 = asset;
  memset(buf, 0, sizeof(buf));
  v9 = 0;
  if (asset)
  {
    [asset duration];
  }

  v6 = *buf;
  v7 = v9;
  [(PXLivePhotoTrimScrubber *)self _setUntrimmedDuration:&v6];
  [(PXLivePhotoTrimScrubber *)self _updateContentAspectRatio];
}

- (void)handleEndTracking:(BOOL)tracking
{
  trackingCopy = tracking;
  v19 = *MEMORY[0x1E69E9840];
  _trackingElement = [(PXLivePhotoTrimScrubber *)self _trackingElement];
  [(PXLivePhotoTrimScrubber *)self _setTrackingElement:0];
  if (_trackingElement)
  {
    if (_trackingElement == 3)
    {
      photoLoupe = self->_photoLoupe;
      [(PXLivePhotoTrimScrubber *)self keyTime];
      [(PXLivePhotoTrimScrubberLoupeView *)photoLoupe setShowLoupeThumbnailWithFrameTime:v17 animate:1];
    }

    if (self->_delegateFlags.respondsToDidEndInteractivelyEditingElement)
    {
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubber:self didEndInteractivelyEditingElement:_trackingElement successful:trackingCopy];
    }
  }

  v8 = [(PXLivePhotoTrimScrubber *)self _snappingControllersForElement:_trackingElement];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) interactionEnded];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }

  [(PXLivePhotoTrimScrubber *)self _updateZoomState:0];
  if ([(PXLivePhotoTrimScrubber *)self playheadStyle])
  {
    [(PXLivePhotoTrimScrubber *)self _setPhotoLoupeHidden:0 animated:1];
  }
}

- (void)handleChangeTrackingAtLocation:(CGPoint)location withVelocity:(CGPoint)velocity
{
  x = velocity.x;
  y = location.y;
  v6 = location.x;
  v8 = [(PXLivePhotoTrimScrubber *)self _trackingElement:location.x];
  memset(&v25[4], 0, 24);
  [(PXLivePhotoTrimScrubber *)self _timeAtLocation:v8 forElement:v6, y];
  v9 = [(PXLivePhotoTrimScrubber *)self _snappingControllersForElement:v8];
  v10 = [(PXLivePhotoTrimScrubber *)self _snapTimesForElement:v8];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  time = *&v25[4];
  v25[3] = CMTimeGetSeconds(&time);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v23 = &unk_1A561E057;
  v24 = *&v25[4];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __71__PXLivePhotoTrimScrubber_handleChangeTrackingAtLocation_withVelocity___block_invoke;
  v17[3] = &unk_1E7747190;
  v19 = v25;
  v21 = x;
  v11 = v10;
  v18 = v11;
  p_time = &time;
  [v9 enumerateObjectsUsingBlock:v17];
  v13 = *(*&time.timescale + 32);
  v14 = *(*&time.timescale + 48);
  [(PXLivePhotoTrimScrubber *)self _clampTimeToViewportIfZoomed:&v13];
  v12 = *&time.timescale;
  *(*&time.timescale + 32) = v15;
  *(v12 + 48) = v16;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v13 = v15;
      v14 = v16;
      [(PXLivePhotoTrimScrubber *)self _setKeyTime:&v13 canHaveImpact:1 forElement:3];
    }

    else if (v8 == 4)
    {
      v13 = v15;
      v14 = v16;
      [(PXLivePhotoTrimScrubber *)self _setKeyTime:&v13 canHaveImpact:1 forElement:4];
    }
  }

  else if (v8 == 1)
  {
    v13 = v15;
    v14 = v16;
    [(PXLivePhotoTrimScrubber *)self setTrimStartTime:&v13];
  }

  else if (v8 == 2)
  {
    v13 = v15;
    v14 = v16;
    [(PXLivePhotoTrimScrubber *)self setTrimEndTime:&v13];
  }

  _Block_object_dispose(&time, 8);
  _Block_object_dispose(v25, 8);
}

void __71__PXLivePhotoTrimScrubber_handleChangeTrackingAtLocation_withVelocity___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = 0;
  [a2 updateOffset:*(*(a1 + 40) + 8) + 24 withVelocity:&v10 shouldSnap:0 shouldBreak:*(a1 + 56)];
  if (v10 == 1)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v8 = v7;
    if (v7)
    {
      [v7 CMTimeValue];
    }

    v9 = *(*(a1 + 48) + 8);
    *(v9 + 32) = 0uLL;
    *(v9 + 48) = 0;
    *a4 = 1;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_clampTimeToViewportIfZoomed:(SEL)zoomed
{
  *retstr = *a4;
  result = [(PXLivePhotoTrimScrubber *)self state];
  if (result == 2)
  {
    memset(&v11, 0, sizeof(v11));
    [(PXLivePhotoTrimScrubber *)self viewportMinTime];
    [(PXLivePhotoTrimScrubber *)self viewportMaxTime];
    CMTimeRangeFromTimeToTime(&v11, &v9.start, &end);
    v8 = *&a4->var0;
    end.epoch = a4->var3;
    v9 = v11;
    *&end.value = v8;
    return CMTimeClampToRange(retstr, &end, &v9);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)viewportMaxTime
{
  layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  layoutHelper2 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  [layoutHelper2 viewportFrame];
  MaxX = CGRectGetMaxX(v10);
  if (layoutHelper)
  {
    [layoutHelper timeForOffsetInScrubberSpace:MaxX];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)viewportMinTime
{
  layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  layoutHelper2 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  [layoutHelper2 viewportFrame];
  MinX = CGRectGetMinX(v10);
  if (layoutHelper)
  {
    [layoutHelper timeForOffsetInScrubberSpace:MinX];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)handleBeginTrackingAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v43 = *MEMORY[0x1E69E9840];
  spec = [(PXLivePhotoTrimScrubber *)self spec];
  [spec handleWidth];
  v8 = v7;
  [spec handleAnchorX];
  v10 = v8 * v9;
  [spec handleTouchDistance];
  v12 = v11;
  [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe center];
  v14 = vabdd_f64(x, v13);
  [(UIImageView *)self->_trimStartHandle frame];
  v15 = vabdd_f64(x, v10 + CGRectGetMinX(v44));
  [(UIImageView *)self->_trimEndHandle frame];
  v16 = vabdd_f64(x, CGRectGetMaxX(v45) - v10);
  if ([(PXLivePhotoTrimScrubber *)self playheadStyle]== 2 && v14 < v12)
  {
    v17 = 3;
  }

  else
  {
    v17 = 0;
  }

  v23 = [(PXLivePhotoTrimScrubber *)self playheadStyle]!= 1 || v14 >= v12;
  v18 = 4;
  if (v23)
  {
    v18 = v17;
  }

  v19 = v16 < v12;
  if (v16 >= v15)
  {
    v19 = 0;
  }

  if (v15 < v12 && v15 < v14)
  {
    v18 = 1;
  }

  if (v16 < v14 && v19)
  {
    v20 = 2;
  }

  else
  {
    v20 = v18;
  }

  [(PXLivePhotoTrimScrubber *)self _setPhotoLoupeHidden:(v16 < v14 && v19) | (v15 < v12 && v15 < v14) animated:1];
  fallbackToKeyTimeTracking = 0;
  if ([(PXLivePhotoTrimScrubber *)self playheadStyle]== 2 && !v20)
  {
    fallbackToKeyTimeTracking = [spec fallbackToKeyTimeTracking];
    if (fallbackToKeyTimeTracking)
    {
      v20 = 3;
    }

    else
    {
      v20 = 0;
    }
  }

  playheadStyle = [(PXLivePhotoTrimScrubber *)self playheadStyle];
  if (v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = playheadStyle == 1;
  }

  if (v23)
  {
    fallbackToPlayheadTracking = [spec fallbackToPlayheadTracking];
    if (fallbackToPlayheadTracking)
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    fallbackToPlayheadTracking = 0;
  }

  if (!self->_delegateFlags.respondsToCanBeginInteractivelyEditingElement || (-[PXLivePhotoTrimScrubber delegate](self, "delegate"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 trimScrubber:self canBeginInteractivelyEditingElement:v20], v25, v26))
  {
    [(PXLivePhotoTrimScrubber *)self _setTrackingElement:v20];
    v27 = [(PXLivePhotoTrimScrubber *)self _snappingControllersForElement:v20];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v39;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v38 + 1) + 8 * i) interactionBegan];
        }

        v29 = [v27 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v29);
    }

    if ((fallbackToKeyTimeTracking | fallbackToPlayheadTracking) == 1)
    {
      v36 = 0uLL;
      v37 = 0;
      [(PXLivePhotoTrimScrubber *)self _timeAtLocation:v20 forElement:x, y];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __57__PXLivePhotoTrimScrubber_handleBeginTrackingAtLocation___block_invoke;
      v33[3] = &unk_1E7747168;
      v34 = v36;
      v35 = v37;
      v33[4] = self;
      v33[5] = v20;
      [(PXLivePhotoTrimScrubber *)self _animateChanges:v33];
    }

    if (v20 && self->_delegateFlags.respondsToDidBeginInteractivelyEditingElement)
    {
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubber:self didBeginInteractivelyEditingElement:v20];
    }

    [(PXLivePhotoTrimScrubber *)self _setupZoom];
    [(PXLivePhotoTrimScrubber *)self prepareForImpact];
  }
}

uint64_t __57__PXLivePhotoTrimScrubber_handleBeginTrackingAtLocation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  [v2 _setKeyTime:&v6 canHaveImpact:1 forElement:v3];
  v4 = *(*(a1 + 32) + 408);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  return [v4 setFrameTime:&v6];
}

- (void)_setTrackingElement:(int64_t)element
{
  if (self->__trackingElement != element)
  {
    self->__trackingElement = element;
    if (element == 3)
    {
      [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe setShowLoupePlayerAnimate:0];
    }
  }
}

- (void)handleLongPressWithElement:(int64_t)element
{
  allowZoom = [(PXLivePhotoTrimScrubber *)self allowZoom];
  if (element == 4 && allowZoom)
  {
    if (self->_delegateFlags.respondsToPausePlayer)
    {
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubberPausePlayer:self];
    }

    [(PXLivePhotoTrimScrubber *)self keyTime];
    [(PXLivePhotoTrimScrubber *)self _zoomAtTime:v7];
  }
}

- (void)handleTapWithElement:(int64_t)element
{
  if (self->_delegateFlags.respondsToDidBeginInteractivelyEditingElement)
  {
    delegate = [(PXLivePhotoTrimScrubber *)self delegate];
    [delegate trimScrubber:self didTapElement:element];
  }
}

- (void)handleSetKeyTime:(id *)time
{
  if ([(PXLivePhotoTrimScrubber *)self playheadStyle]== 2)
  {
    if (self->_delegateFlags.respondsToDidBeginInteractivelyEditingElement)
    {
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubber:self didBeginInteractivelyEditingElement:3];
    }

    [(PXLivePhotoTrimScrubber *)self _setTrackingElement:3];
    time1 = self->_trimStartTime;
    time2 = *time;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      time1 = self->_trimEndTime;
      time2 = *time;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __44__PXLivePhotoTrimScrubber_handleSetKeyTime___block_invoke;
        v7[3] = &unk_1E7749770;
        v7[4] = self;
        v8 = *&time->var0;
        var3 = time->var3;
        [(PXLivePhotoTrimScrubber *)self performAnimatedChanges:v7];
      }
    }

    [(PXLivePhotoTrimScrubber *)self _setTrackingElement:0];
    if (self->_delegateFlags.respondsToDidEndInteractivelyEditingElement)
    {
      delegate2 = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate2 trimScrubber:self didEndInteractivelyEditingElement:3 successful:1];
    }
  }
}

uint64_t __44__PXLivePhotoTrimScrubber_handleSetKeyTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  return [*(a1 + 32) setKeyTime:&v2];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_timeAtLocation:(SEL)location forElement:(CGPoint)element
{
  y = element.y;
  x = element.x;
  spec = [(PXLivePhotoTrimScrubber *)self spec];
  [spec handleWidth];
  v11 = v10;
  [spec handleAnchorX];
  v13 = v11 * (1.0 - v12);
  if (a5 == 2)
  {
    v14 = -v13;
  }

  else
  {
    v14 = 0.0;
    if (a5 == 1)
    {
      v14 = v13;
    }
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  [(PXLivePhotoTrimScrubber *)self timeAtPoint:x + v14, y];

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeAtPoint:(SEL)point
{
  x = a4.x;
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  v6 = [(PXLivePhotoTrimScrubber *)self layoutHelper:a4.x];
  if (v6)
  {
    v8 = v6;
    [v6 timeForOffsetInScrubberSpace:x];
    v6 = v8;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (double)offsetForTime:(id *)time
{
  layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  v8 = *time;
  [layoutHelper offsetInScrubberSpaceForTime:&v8];
  v6 = v5;

  return v6;
}

- (double)_offsetForTime:(id *)time
{
  memset(&v20, 0, sizeof(v20));
  [(PXLivePhotoTrimScrubber *)self untrimmedDuration];
  v5 = 0.0;
  if (0 >> 96 == 1 && (time->var2 & 0x1D) == 1)
  {
    time1 = v20;
    v6 = MEMORY[0x1E6960CC0];
    time2 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      time2 = *time;
      v17 = v20;
      CMTimeMinimum(&time1, &time2, &v17);
      epoch = time1.epoch;
      *time = time1;
      *&time2.value = *&time->var0;
      time2.epoch = epoch;
      v17 = *v6;
      CMTimeMaximum(&time1, &time2, &v17);
      *time = time1;
      [(PXLivePhotoTrimScrubber *)self bounds];
      Width = CGRectGetWidth(v21);
      [(PXLivePhotoTrimScrubber *)self horizontalInset];
      v10 = v9;
      spec = [(PXLivePhotoTrimScrubber *)self spec];
      [spec handleWidth];
      v13 = v10 + v12;
      v14 = Width + v13 * -2.0;
      time1 = *time;
      Seconds = CMTimeGetSeconds(&time1);
      time1 = v20;
      v5 = v13 + Seconds / CMTimeGetSeconds(&time1) * v14;
    }
  }

  return v5;
}

- (void)setShowVideoScrubberDebugOverlay:(BOOL)overlay
{
  if (self->_showVideoScrubberDebugOverlay != overlay)
  {
    self->_showVideoScrubberDebugOverlay = overlay;
    if (overlay)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      debugStartTimeView = self->_debugStartTimeView;
      self->_debugStartTimeView = v4;

      [(UIView *)self->_debugStartTimeView setUserInteractionEnabled:0];
      redColor = [MEMORY[0x1E69DC888] redColor];
      [(UIView *)self->_debugStartTimeView setBackgroundColor:redColor];

      [(PXLivePhotoTrimScrubber *)self addSubview:self->_debugStartTimeView];
      v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
      debugLoupeTimeView = self->_debugLoupeTimeView;
      self->_debugLoupeTimeView = v7;

      [(UIView *)self->_debugLoupeTimeView setUserInteractionEnabled:0];
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      [(UIView *)self->_debugLoupeTimeView setBackgroundColor:greenColor];

      [(PXLivePhotoTrimScrubber *)self addSubview:self->_debugLoupeTimeView];
      v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
      debugEndTimeView = self->_debugEndTimeView;
      self->_debugEndTimeView = v10;

      [(UIView *)self->_debugEndTimeView setUserInteractionEnabled:0];
      blueColor = [MEMORY[0x1E69DC888] blueColor];
      [(UIView *)self->_debugEndTimeView setBackgroundColor:blueColor];

      v13 = self->_debugEndTimeView;

      [(PXLivePhotoTrimScrubber *)self addSubview:v13];
    }

    else
    {
      [(UIView *)self->_debugStartTimeView removeFromSuperview];
      v14 = self->_debugStartTimeView;
      self->_debugStartTimeView = 0;

      [(UIView *)self->_debugLoupeTimeView removeFromSuperview];
      v15 = self->_debugLoupeTimeView;
      self->_debugLoupeTimeView = 0;

      [(UIView *)self->_debugEndTimeView removeFromSuperview];
      v16 = self->_debugEndTimeView;
      self->_debugEndTimeView = 0;
    }
  }
}

- (void)_updateSpecDependentUI
{
  [(PXLivePhotoTrimScrubber *)self invalidateIntrinsicContentSize];
  [(PXLivePhotoTrimScrubberSpec *)self->_spec filmstripCornerRadius];
  v4 = v3;
  layer = [(UIView *)self->_filmstripContainerView layer];
  [layer setCornerRadius:v4];

  [(PXLivePhotoTrimScrubberSpec *)self->_spec loupeOuterCornerRadius];
  [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe setOuterCornerRadius:?];
  [(PXLivePhotoTrimScrubberSpec *)self->_spec loupeInnerCornerRadius];
  [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe setInnerCornerRadius:?];
  [(PXLivePhotoTrimScrubberSpec *)self->_spec loupeVerticalInset];
  [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe setVerticalInset:?];
  filmstripBorderColor = [(PXLivePhotoTrimScrubberSpec *)self->_spec filmstripBorderColor];

  if (filmstripBorderColor)
  {
    filmstripBorderColor2 = [(PXLivePhotoTrimScrubberSpec *)self->_spec filmstripBorderColor];
    cGColor = [filmstripBorderColor2 CGColor];
    layer2 = [(UIView *)self->_filmstripContainerView layer];
    [layer2 setBorderColor:cGColor];

    layer3 = [(UIView *)self->_filmstripContainerView layer];
    [layer3 setBorderWidth:1.0];
  }
}

- (void)_PXLivePhotoTrimScrubber_commonInit
{
  [(PXLivePhotoTrimScrubber *)self setClipsToBounds:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(PXLivePhotoTrimScrubber *)self setBackgroundColor:clearColor];

  self->_state = 0;
  self->__contentAspectRatio = 1.0;
  CMTimeMake(&v42, 1, 2);
  self->_minimumTrimLength = v42;
  CMTimeMake(&v42, 1, 240);
  *(&self->_hasPresentedControls + 4) = *&v42.value;
  *&self->_photoTrimBuffer.flags = v42.epoch;
  v4 = MEMORY[0x1E6960C70];
  v5 = *MEMORY[0x1E6960C70];
  *&self->_keyTime.value = *MEMORY[0x1E6960C70];
  v6 = *(v4 + 16);
  self->_keyTime.epoch = v6;
  *&self->_trimStartTime.value = v5;
  self->_trimStartTime.epoch = v6;
  *&self->_trimEndTime.value = v5;
  self->_trimEndTime.epoch = v6;
  self->_playheadStyle = 2;
  v7 = objc_alloc(MEMORY[0x1E69DD250]);
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
  filmstripContainerView = self->_filmstripContainerView;
  self->_filmstripContainerView = v12;

  [(PXLivePhotoTrimScrubber *)self addSubview:self->_filmstripContainerView];
  v14 = [objc_alloc(-[PXLivePhotoTrimScrubber filmStripViewClass](self "filmStripViewClass"))];
  filmstripView = self->_filmstripView;
  self->_filmstripView = v14;

  if (objc_opt_respondsToSelector())
  {
    [(PXLivePhotoTrimScrubberFilmStripView *)self->_filmstripView setUseContentAspectRatio:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PXLivePhotoTrimScrubberFilmStripView *)self->_filmstripView setUserInteractionEnabled:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PXLivePhotoTrimScrubberFilmStripView *)self->_filmstripView setPreserveThumbnailsDuringReload:1];
  }

  if (objc_opt_respondsToSelector())
  {
    [(PXLivePhotoTrimScrubberFilmStripView *)self->_filmstripView setGeneratesPlaceholderImage:1];
  }

  [(UIView *)self->_filmstripContainerView addSubview:self->_filmstripView];
  v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
  preTrimOverlayView = self->_preTrimOverlayView;
  self->_preTrimOverlayView = v16;

  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
  [(UIView *)self->_preTrimOverlayView setBackgroundColor:v18];

  [(UIView *)self->_filmstripContainerView addSubview:self->_preTrimOverlayView];
  v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
  postTrimOverlayView = self->_postTrimOverlayView;
  self->_postTrimOverlayView = v19;

  v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.6];
  [(UIView *)self->_postTrimOverlayView setBackgroundColor:v21];

  [(UIView *)self->_filmstripContainerView addSubview:self->_postTrimOverlayView];
  trimStartImage = [objc_opt_class() trimStartImage];
  trimStartHighlightedImage = [objc_opt_class() trimStartHighlightedImage];
  v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:trimStartImage highlightedImage:trimStartHighlightedImage];
  trimStartHandle = self->_trimStartHandle;
  self->_trimStartHandle = v24;

  [(UIImageView *)self->_trimStartHandle setContentMode:0];
  [(PXLivePhotoTrimScrubber *)self addSubview:self->_trimStartHandle];
  trimEndImage = [objc_opt_class() trimEndImage];
  trimEndHighlightedImage = [objc_opt_class() trimEndHighlightedImage];
  v28 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:trimEndImage highlightedImage:trimEndHighlightedImage];
  trimEndHandle = self->_trimEndHandle;
  self->_trimEndHandle = v28;

  [(UIImageView *)self->_trimEndHandle setContentMode:0];
  [(PXLivePhotoTrimScrubber *)self addSubview:self->_trimEndHandle];
  v30 = [[PXLivePhotoTrimScrubberLoupeView alloc] initWithFrame:self->_traitCollection == 0 forceDarkUserInterfaceStyle:v8, v9, v10, v11];
  photoLoupe = self->_photoLoupe;
  self->_photoLoupe = v30;

  [(PXLivePhotoTrimScrubber *)self addSubview:self->_photoLoupe];
  [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
  objc_initWeak(&v42, self);
  v32 = [PXLivePhotoTrimScrubberHiddenAnimationHelper alloc];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __62__PXLivePhotoTrimScrubber__PXLivePhotoTrimScrubber_commonInit__block_invoke;
  v40[3] = &unk_1E7747EB0;
  objc_copyWeak(&v41, &v42);
  v33 = [(PXLivePhotoTrimScrubberHiddenAnimationHelper *)v32 initWithAnimationBlock:v40];
  loupeHiddenHelper = self->_loupeHiddenHelper;
  self->_loupeHiddenHelper = v33;

  v35 = [PXLivePhotoTrimScrubberHiddenAnimationHelper alloc];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __62__PXLivePhotoTrimScrubber__PXLivePhotoTrimScrubber_commonInit__block_invoke_2;
  v38[3] = &unk_1E7747EB0;
  objc_copyWeak(&v39, &v42);
  v36 = [(PXLivePhotoTrimScrubberHiddenAnimationHelper *)v35 initWithAnimationBlock:v38];
  trimControlHiddenHelper = self->_trimControlHiddenHelper;
  self->_trimControlHiddenHelper = v36;

  [(PXLivePhotoTrimScrubber *)self _updateSpecDependentUI];
  [(PXLivePhotoTrimScrubber *)self _setPhotoLoupeHidden:1 animated:0];
  [(PXLivePhotoTrimScrubber *)self _setTrimControlsHidden:1 animated:0];
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v42);
}

void __62__PXLivePhotoTrimScrubber__PXLivePhotoTrimScrubber_commonInit__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained photoLoupe];
  [v3 setAlpha:v2];
}

void __62__PXLivePhotoTrimScrubber__PXLivePhotoTrimScrubber_commonInit__block_invoke_2(uint64_t a1, int a2)
{
  objc_copyWeak(&to, (a1 + 32));
  if (a2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = objc_loadWeakRetained(&to);
  v5 = [v4 trimEndHandle];
  [v5 setAlpha:v3];

  v6 = objc_loadWeakRetained(&to);
  v7 = [v6 trimStartHandle];
  [v7 setAlpha:v3];

  v8 = objc_loadWeakRetained(&to);
  v9 = [v8 _preTrimOverlayView];
  [v9 setAlpha:v3];

  v10 = objc_loadWeakRetained(&to);
  v11 = [v10 _postTrimOverlayView];
  [v11 setAlpha:v3];

  objc_destroyWeak(&to);
}

- (void)_zoomAtTime:(id *)time
{
  [(PXLivePhotoTrimScrubber *)self setState:2];
  layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  [layoutHelper setFilmstripScale:5.0];

  time = *time;
  Seconds = CMTimeGetSeconds(&time);
  layoutHelper2 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  v8 = layoutHelper2;
  if (layoutHelper2)
  {
    [layoutHelper2 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v9 = Seconds / CMTimeGetSeconds(&time);
  layoutHelper3 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  [layoutHelper3 setPivotAnchor:v9];

  [(PXLivePhotoTrimScrubber *)self impactOccured];
  [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__PXLivePhotoTrimScrubber__zoomAtTime___block_invoke;
  v11[3] = &unk_1E774C648;
  v11[4] = self;
  [(PXLivePhotoTrimScrubber *)self _animateChanges:v11];
}

void __39__PXLivePhotoTrimScrubber__zoomAtTime___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);
  if (*(v2 + 447) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 696));
    v4 = *(a1 + 32);
    if (v4)
    {
      [*(a1 + 32) viewportMinTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    v6 = *(a1 + 32);
    if (v6)
    {
      [v6 viewportMaxTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    [WeakRetained trimScrubber:v4 didZoomToMinimumValue:Seconds maximumValue:CMTimeGetSeconds(&time)];
  }
}

- (void)_zoomAtTrackedElement
{
  _trackingElement = [(PXLivePhotoTrimScrubber *)self _trackingElement];
  if (_trackingElement)
  {
    v6 = 0uLL;
    v7 = 0;
    [(PXLivePhotoTrimScrubber *)self timeForElement:_trackingElement];
    v4 = v6;
    v5 = v7;
    [(PXLivePhotoTrimScrubber *)self _zoomAtTime:&v4];
  }
}

- (void)_zoomDelayed
{
  if ([(PXLivePhotoTrimScrubber *)self allowZoom]&& [(PXLivePhotoTrimScrubber *)self state]== 1)
  {

    [(PXLivePhotoTrimScrubber *)self _zoomAtTrackedElement];
  }
}

- (void)_updateZoomState:(BOOL)state
{
  stateCopy = state;
  if ([(PXLivePhotoTrimScrubber *)self allowZoom])
  {
    state = [(PXLivePhotoTrimScrubber *)self state];
    if (stateCopy)
    {
      if (state == 1)
      {
        [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__zoomDelayed object:0];

        [(PXLivePhotoTrimScrubber *)self performSelector:sel__zoomDelayed withObject:0 afterDelay:0.5];
      }
    }

    else if (state == 1 || [(PXLivePhotoTrimScrubber *)self state]== 2)
    {
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__zoomDelayed object:0];

      [(PXLivePhotoTrimScrubber *)self unzoom];
    }
  }
}

- (void)_setupZoom
{
  if ([(PXLivePhotoTrimScrubber *)self allowZoom]&& ![(PXLivePhotoTrimScrubber *)self state])
  {
    [(PXLivePhotoTrimScrubber *)self performSelector:sel__zoomDelayed withObject:0 afterDelay:0.5];

    [(PXLivePhotoTrimScrubber *)self setState:1];
  }
}

- (void)updateTraitCollection:(id)collection
{
  objc_storeStrong(&self->_traitCollection, collection);

  [(PXLivePhotoTrimScrubber *)self _updateTrimHandles];
}

- (void)unzoom
{
  state = [(PXLivePhotoTrimScrubber *)self state];
  [(PXLivePhotoTrimScrubber *)self setState:0];
  if (state == 2)
  {
    layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
    [layoutHelper setFilmstripScale:1.0];

    layoutHelper2 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
    [layoutHelper2 setPivotAnchor:0.5];

    [(PXLivePhotoTrimScrubber *)self impactOccured];
    [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__PXLivePhotoTrimScrubber_unzoom__block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXLivePhotoTrimScrubber *)self _animateChanges:v6];
  }
}

void __33__PXLivePhotoTrimScrubber_unzoom__block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);
  if (*(v2 + 448) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 696));
    [WeakRetained trimScrubberDidUnzoom:*(a1 + 32)];
  }
}

- (BOOL)tryZoomAtTime:(id *)time
{
  allowZoom = [(PXLivePhotoTrimScrubber *)self allowZoom];
  if (allowZoom)
  {
    if ([(PXLivePhotoTrimScrubber *)self state]== 1)
    {
      LOBYTE(allowZoom) = 0;
    }

    else
    {
      v7 = *&time->var0;
      var3 = time->var3;
      [(PXLivePhotoTrimScrubber *)self _zoomAtTime:&v7];
      LOBYTE(allowZoom) = 1;
    }
  }

  return allowZoom;
}

- (void)setDisabled:(BOOL)disabled useTransparency:(BOOL)transparency
{
  if (self->_disabled != disabled)
  {
    v40[5] = v9;
    v40[6] = v8;
    v40[7] = v7;
    v40[8] = v6;
    v40[15] = v4;
    v40[16] = v5;
    transparencyCopy = transparency;
    disabledCopy = disabled;
    self->_disabled = disabled;
    [(PXLivePhotoTrimScrubber *)self setUserInteractionEnabled:!disabled];
    if (transparencyCopy)
    {
      if (disabledCopy)
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __55__PXLivePhotoTrimScrubber_setDisabled_useTransparency___block_invoke;
        v40[3] = &unk_1E774C648;
        v40[4] = self;
        v13 = 0.25;
        v14 = v40;
      }

      else
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __55__PXLivePhotoTrimScrubber_setDisabled_useTransparency___block_invoke_2;
        v39[3] = &unk_1E774C648;
        v39[4] = self;
        v13 = 0.25;
        v14 = v39;
      }

      [MEMORY[0x1E69DD250] animateWithDuration:v14 animations:v13];
    }

    else
    {
      if (disabledCopy)
      {
        spec = [(PXLivePhotoTrimScrubber *)self spec];
        [(PXLivePhotoTrimScrubber *)self _disabledOverlayFrame];
        v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v16, v17, v18, v19}];
        disabledOverlayColor = [(UIView *)spec disabledOverlayColor];
        [v20 setBackgroundColor:disabledOverlayColor];

        [v20 setAlpha:0.0];
        [(UIView *)spec filmstripCornerRadius];
        v23 = v22;
        layer = [v20 layer];
        [layer setCornerRadius:v23];

        [(PXLivePhotoTrimScrubber *)self addSubview:v20];
        v25 = MEMORY[0x1E69DD250];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __55__PXLivePhotoTrimScrubber_setDisabled_useTransparency___block_invoke_3;
        v37[3] = &unk_1E774C648;
        v26 = v20;
        v38 = v26;
        [v25 animateWithDuration:v37 animations:0.25];
        disabledOverlayView = self->_disabledOverlayView;
        self->_disabledOverlayView = v26;
        v28 = v26;
      }

      else
      {
        v29 = self->_disabledOverlayView;
        if (!v29)
        {
          return;
        }

        v30 = v29;
        v31 = self->_disabledOverlayView;
        self->_disabledOverlayView = 0;

        v32 = MEMORY[0x1E69DD250];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __55__PXLivePhotoTrimScrubber_setDisabled_useTransparency___block_invoke_4;
        v35[3] = &unk_1E774C648;
        v36 = v30;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __55__PXLivePhotoTrimScrubber_setDisabled_useTransparency___block_invoke_5;
        v33[3] = &unk_1E774B308;
        v34 = v36;
        spec = v36;
        [v32 animateWithDuration:v35 animations:v33 completion:0.25];
      }
    }
  }
}

- (CGRect)loupeRect
{
  [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)horizontalOffsetForTime:(id *)time
{
  layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  v8 = *time;
  [layoutHelper offsetInScrubberSpaceForTime:&v8];
  v6 = v5;

  return v6;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeForElement:(SEL)element
{
  *retstr = **&MEMORY[0x1E6960C70];
  if (a4 > 2)
  {
    if (a4 == 3 || a4 == 4)
    {
      return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self keyTime];
    }
  }

  else if (a4 == 1)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self trimStartTime];
  }

  else if (a4 == 2)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self trimEndTime];
  }

  return self;
}

- (int64_t)trimStatus
{
  [(PXLivePhotoTrimScrubber *)self trimStartTime];
  [(PXLivePhotoTrimScrubber *)self trimEndTime];
  [(PXLivePhotoTrimScrubber *)self untrimmedDuration];
  [(PXLivePhotoTrimScrubber *)self originalStartTime];
  [(PXLivePhotoTrimScrubber *)self originalEndTime];
  return 0;
}

- (void)performAnimatedChanges:(id)changes
{
  ++self->_changeDepth;
  (*(changes + 2))(changes, a2);
  v4 = self->_changeDepth - 1;
  self->_changeDepth = v4;
  if (!v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __50__PXLivePhotoTrimScrubber_performAnimatedChanges___block_invoke;
    v5[3] = &unk_1E774C648;
    v5[4] = self;
    [(PXLivePhotoTrimScrubber *)self _animateChanges:v5];
  }
}

- (void)_animateChanges:(id)changes
{
  if (changes)
  {
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:changes completion:0];
  }
}

- (void)_updateTrimHandles
{
  useMiniScrubber = [(PXLivePhotoTrimScrubber *)self useMiniScrubber];
  spec = [(PXLivePhotoTrimScrubber *)self spec];
  [spec setUseMiniScrubberHeight:useMiniScrubber];

  if (self->_trimStartHandle && self->_trimEndHandle)
  {
    useMiniScrubber2 = [(PXLivePhotoTrimScrubber *)self useMiniScrubber];
    v6 = objc_opt_class();
    if (useMiniScrubber2)
    {
      [v6 trimStartImageMini];
    }

    else
    {
      [v6 trimStartImage];
    }
    v7 = ;
    useMiniScrubber3 = [(PXLivePhotoTrimScrubber *)self useMiniScrubber];
    v9 = objc_opt_class();
    if (useMiniScrubber3)
    {
      [v9 trimStartHighlightedImageMini];
    }

    else
    {
      [v9 trimStartHighlightedImage];
    }
    v10 = ;
    [(UIImageView *)self->_trimStartHandle setImage:v7];
    [(UIImageView *)self->_trimStartHandle setHighlightedImage:v10];
    useMiniScrubber4 = [(PXLivePhotoTrimScrubber *)self useMiniScrubber];
    v12 = objc_opt_class();
    if (useMiniScrubber4)
    {
      [v12 trimEndImageMini];
    }

    else
    {
      [v12 trimEndImage];
    }
    v13 = ;
    useMiniScrubber5 = [(PXLivePhotoTrimScrubber *)self useMiniScrubber];
    v15 = objc_opt_class();
    if (useMiniScrubber5)
    {
      [v15 trimEndHighlightedImageMini];
    }

    else
    {
      [v15 trimEndHighlightedImage];
    }
    v16 = ;
    [(UIImageView *)self->_trimEndHandle setImage:v13];
    [(UIImageView *)self->_trimEndHandle setHighlightedImage:v16];
  }

  [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
}

- (void)setUseMiniScrubber:(BOOL)scrubber
{
  if (self->_useMiniScrubber != scrubber)
  {
    self->_useMiniScrubber = scrubber;
    [(PXLivePhotoTrimScrubber *)self _updateTrimHandles];

    [(PXLivePhotoTrimScrubber *)self _updateSpecDependentUI];
  }
}

- (void)setPlayheadStyle:(unint64_t)style animate:(BOOL)animate
{
  animateCopy = animate;
  if (![(PXLivePhotoTrimScrubber *)self currentlyInteractingElement]&& self->_playheadStyle != style)
  {
    self->_playheadStyle = style;
    switch(style)
    {
      case 2uLL:
        [(PXLivePhotoTrimScrubber *)self _setPhotoLoupeHidden:0 animated:animateCopy];
        photoLoupe = self->_photoLoupe;
        [(PXLivePhotoTrimScrubber *)self keyTime];
        [(PXLivePhotoTrimScrubberLoupeView *)photoLoupe setShowLoupeThumbnailWithFrameTime:v19 animate:animateCopy];
        break;
      case 1uLL:
        [(PXLivePhotoTrimScrubber *)self _setPhotoLoupeHidden:0 animated:animateCopy];
        v7 = self->_photoLoupe;
        spec = [(PXLivePhotoTrimScrubber *)self spec];
        [spec playheadWidth];
        [(PXLivePhotoTrimScrubberLoupeView *)v7 setShowNeedleWithWidth:animateCopy animate:?];

        break;
      case 0uLL:
        [(PXLivePhotoTrimScrubber *)self _setPhotoLoupeHidden:1 animated:animateCopy];
        break;
    }

    [(PXLivePhotoTrimScrubber *)self _keyHandleRect];
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;
    if (animateCopy)
    {
      [MEMORY[0x1E6979518] animationDuration];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __52__PXLivePhotoTrimScrubber_setPlayheadStyle_animate___block_invoke;
      v18[3] = &unk_1E7747168;
      v18[4] = self;
      *&v18[5] = v14;
      *&v18[6] = v15;
      *&v18[7] = v16;
      *&v18[8] = v17;
      [MEMORY[0x1E69DD250] animateWithDuration:v18 animations:0 completion:?];
    }

    else
    {
      [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe setFrame:v10, v11, v12, v13];
      [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
    }
  }
}

uint64_t __52__PXLivePhotoTrimScrubber_setPlayheadStyle_animate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

- (CGRect)_keyHandleRect
{
  spec = [(PXLivePhotoTrimScrubber *)self spec];
  [spec handleHeight];
  v5 = v4;

  spec2 = [(PXLivePhotoTrimScrubber *)self spec];
  [spec2 playheadWidth];
  v8 = v7;

  [(PXLivePhotoTrimScrubber *)self _contentAspectRatio];
  v10 = v9;
  spec3 = [(PXLivePhotoTrimScrubber *)self spec];
  [spec3 handleHeight];
  v13 = v10 * v12;

  if ([(PXLivePhotoTrimScrubber *)self playheadStyle]!= 1)
  {
    v8 = v13;
  }

  [(PXLivePhotoTrimScrubber *)self bounds];
  v40.origin.y = (CGRectGetHeight(v39) - v5) * 0.5;
  v40.origin.x = 0.0;
  v40.size.width = v8;
  v40.size.height = v5;
  v41 = CGRectIntegral(v40);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v37 = 0uLL;
  v38 = 0;
  [(PXLivePhotoTrimScrubber *)self keyTime];
  v35 = 0uLL;
  v36 = 0;
  [(PXLivePhotoTrimScrubber *)self trimStartTime];
  v33 = 0uLL;
  v34 = 0;
  [(PXLivePhotoTrimScrubber *)self trimEndTime];
  layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  v31 = v35;
  v32 = v36;
  [layoutHelper offsetInScrubberSpaceForTime:&v31 fallbackAnchor:0.0];
  v20 = v19;

  layoutHelper2 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  v31 = v33;
  v32 = v34;
  [layoutHelper2 offsetInScrubberSpaceForTime:&v31 fallbackAnchor:1.0];
  v23 = v22;

  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v24 = CGRectGetWidth(v42);
  playheadStyle = [(PXLivePhotoTrimScrubber *)self playheadStyle];
  if (v24 > v23 - v20)
  {
    v26 = playheadStyle;
    if ([(PXLivePhotoTrimScrubber *)self _trackingElement]== 2 && v26 == 2)
    {
LABEL_10:
      layoutHelper3 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
      v31 = *MEMORY[0x1E6960CC0];
      v32 = *(MEMORY[0x1E6960CC0] + 16);
      [layoutHelper3 offsetInScrubberSpaceForTime:&v31 fallbackAnchor:0.0];
      layoutHelper4 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
      [(PXLivePhotoTrimScrubber *)self untrimmedDuration];
      [layoutHelper4 offsetInScrubberSpaceForTime:&v31 fallbackAnchor:1.0];
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      CGRectGetWidth(v46);
      PXClamp();
    }

    if ([(PXLivePhotoTrimScrubber *)self _trackingElement]== 1 && [(PXLivePhotoTrimScrubber *)self playheadStyle]== 2)
    {
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      v27 = CGRectGetWidth(v43);
      goto LABEL_10;
    }
  }

  layoutHelper5 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  v31 = v37;
  v32 = v38;
  [layoutHelper5 offsetInScrubberSpaceForTime:&v31 fallbackAnchor:0.5];

  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  CGRectGetWidth(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v27 = v23 - CGRectGetWidth(v45);
  goto LABEL_10;
}

- (void)setTrimEndTime:(id *)time
{
  memset(&v12, 0, sizeof(v12));
  p_trimStartTime = &self->_trimStartTime;
  p_minimumTrimLength = &self->_minimumTrimLength;
  [(PXLivePhotoTrimScrubber *)self untrimmedDuration];
  v9 = *p_minimumTrimLength;
  CMTimeMinimum(&rhs, &v9, &time2);
  time2 = *p_trimStartTime;
  CMTimeAdd(&v12, &time2, &rhs);
  rhs = *time;
  time2 = v12;
  if (CMTimeCompare(&rhs, &time2) < 0)
  {
    rhs = self->_trimEndTime;
    time2 = v12;
    if (CMTimeCompare(&rhs, &time2) >= 1)
    {
      [(PXLivePhotoTrimScrubber *)self _trimHandleDidReachBounds];
    }

    *time = v12;
  }

  rhs = *time;
  time2 = self->_trimEndTime;
  if (CMTimeCompare(&rhs, &time2))
  {
    v7 = *&time->var0;
    self->_trimEndTime.epoch = time->var3;
    *&self->_trimEndTime.value = v7;
    if (self->_delegateFlags.respondsToDidChangeTimeForElement)
    {
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubber:self didChangeTimeForElement:2];

      [(PXLivePhotoTrimScrubber *)self _updateZoomState:1];
    }

    [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
  }
}

- (void)setTrimStartTime:(id *)time
{
  memset(&v12, 0, sizeof(v12));
  p_trimEndTime = &self->_trimEndTime;
  p_minimumTrimLength = &self->_minimumTrimLength;
  [(PXLivePhotoTrimScrubber *)self untrimmedDuration];
  v9 = *p_minimumTrimLength;
  CMTimeMinimum(&rhs, &v9, &time2);
  time2 = *p_trimEndTime;
  CMTimeSubtract(&v12, &time2, &rhs);
  rhs = *time;
  time2 = v12;
  if (CMTimeCompare(&rhs, &time2) >= 1)
  {
    rhs = self->_trimStartTime;
    time2 = v12;
    if (CMTimeCompare(&rhs, &time2) < 0)
    {
      [(PXLivePhotoTrimScrubber *)self _trimHandleDidReachBounds];
    }

    *time = v12;
  }

  rhs = *time;
  time2 = self->_trimStartTime;
  if (CMTimeCompare(&rhs, &time2))
  {
    v7 = *&time->var0;
    self->_trimStartTime.epoch = time->var3;
    *&self->_trimStartTime.value = v7;
    if (self->_delegateFlags.respondsToDidChangeTimeForElement)
    {
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubber:self didChangeTimeForElement:1];

      [(PXLivePhotoTrimScrubber *)self _updateZoomState:1];
    }

    [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
  }
}

- (void)setFocusEventTimes:(id)times
{
  timesCopy = times;
  focusEventTimes = self->_focusEventTimes;
  if (focusEventTimes != timesCopy)
  {
    v9 = timesCopy;
    v6 = [(NSArray *)focusEventTimes isEqual:timesCopy];
    timesCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_focusEventTimes;
      self->_focusEventTimes = v7;

      [(PXLivePhotoTrimScrubber *)self _updateFocusEventSnappingControllers];
      timesCopy = v9;
    }
  }
}

- (void)setSnapTrimEndTimes:(id)times
{
  timesCopy = times;
  snapTrimEndTimes = self->_snapTrimEndTimes;
  if (snapTrimEndTimes != timesCopy)
  {
    v9 = timesCopy;
    v6 = [(NSArray *)snapTrimEndTimes isEqual:timesCopy];
    timesCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_snapTrimEndTimes;
      self->_snapTrimEndTimes = v7;

      [(PXLivePhotoTrimScrubber *)self _updateEndTimeSnappingControllers];
      timesCopy = v9;
    }
  }
}

- (void)setSnapTrimStartTimes:(id)times
{
  timesCopy = times;
  snapTrimStartTimes = self->_snapTrimStartTimes;
  if (snapTrimStartTimes != timesCopy)
  {
    v9 = timesCopy;
    v6 = [(NSArray *)snapTrimStartTimes isEqual:timesCopy];
    timesCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_snapTrimStartTimes;
      self->_snapTrimStartTimes = v7;

      [(PXLivePhotoTrimScrubber *)self _updateStartTimeSnappingControllers];
      timesCopy = v9;
    }
  }
}

- (void)setSuggestedKeyTime:(id *)time
{
  p_suggestedKeyTime = &self->_suggestedKeyTime;
  time1 = *time;
  suggestedKeyTime = self->_suggestedKeyTime;
  if (CMTimeCompare(&time1, &suggestedKeyTime))
  {
    v6 = *&time->var0;
    p_suggestedKeyTime->epoch = time->var3;
    *&p_suggestedKeyTime->value = v6;
    [(PXLivePhotoTrimScrubber *)self _updateKeyTimeSnappingControllers];
  }
}

- (void)setSnapKeyTimes:(id)times
{
  timesCopy = times;
  v5 = timesCopy;
  if (self->_snapKeyTimes != timesCopy)
  {
    v9 = timesCopy;
    v6 = [(NSArray *)timesCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      snapKeyTimes = self->_snapKeyTimes;
      self->_snapKeyTimes = v7;

      [(PXLivePhotoTrimScrubber *)self _updateKeyTimeSnappingControllers];
      v5 = v9;
    }
  }
}

- (BOOL)isValidKeyTime:(id *)time
{
  v11 = 0uLL;
  v12 = 0;
  [(PXLivePhotoTrimScrubber *)self trimStartTime];
  memset(&v10, 0, sizeof(v10));
  [(PXLivePhotoTrimScrubber *)self trimEndTime];
  if ((time->var2 & 1) == 0)
  {
    return 0;
  }

  memset(&v9, 0, sizeof(v9));
  *&v7.start.value = v11;
  v7.start.epoch = v12;
  end = v10;
  CMTimeRangeFromTimeToTime(&v9, &v7.start, &end);
  *&v7.start.value = *&v9.start.value;
  *&v7.start.epoch = *&v9.start.epoch;
  v6 = *&time->var0;
  *&v7.duration.timescale = *&v9.duration.timescale;
  *&end.value = v6;
  end.epoch = time->var3;
  if (CMTimeRangeContainsTime(&v7, &end))
  {
    return 1;
  }

  *&v7.start.value = v11;
  v7.start.epoch = v12;
  end = *time;
  if (!CMTimeCompare(&v7.start, &end))
  {
    return 1;
  }

  v7.start = v10;
  end = *time;
  return CMTimeCompare(&v7.start, &end) == 0;
}

- (void)_setKeyTime:(id *)time canHaveImpact:(BOOL)impact forElement:(int64_t)element
{
  impactCopy = impact;
  if (time->var2 & 0x1D) == 1 && (p_trimEndTime = &self->_trimEndTime, time1 = *time, trimEndTime = self->_trimEndTime, CMTimeCompare(&time1, &trimEndTime) >= 1) && (self->_trimEndTime.flags)
  {
    v16 = *&p_trimEndTime->value;
    time->var3 = self->_trimEndTime.epoch;
    *&time->var0 = v16;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if ((time->var2 & 0x1D) == 1)
  {
    time1 = *time;
    trimEndTime = self->_trimStartTime;
    if (CMTimeCompare(&time1, &trimEndTime) < 0 && (self->_trimStartTime.flags & 1) != 0)
    {
      v11 = *&self->_trimStartTime.value;
      time->var3 = self->_trimStartTime.epoch;
      *&time->var0 = v11;
      v10 = 1;
    }
  }

  time1 = self->_keyTime;
  trimEndTime = *time;
  if (CMTimeCompare(&time1, &trimEndTime))
  {
    v12 = *&time->var0;
    self->_keyTime.epoch = time->var3;
    *&self->_keyTime.value = v12;
    playheadStyle = [(PXLivePhotoTrimScrubber *)self playheadStyle];
    if ((v10 & impactCopy) == 1 && (time->var2 & 0x1D) == 1 && playheadStyle)
    {
      [(PXLivePhotoTrimScrubber *)self _trimHandleDidReachBounds];
    }

    if (self->_delegateFlags.respondsToDidChangeTimeForElement)
    {
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubber:self didChangeTimeForElement:element];

      [(PXLivePhotoTrimScrubber *)self _updateZoomState:1];
    }

    [(PXLivePhotoTrimScrubber *)self setNeedsLayout];
    photoLoupe = self->_photoLoupe;
    time1 = *time;
    [(PXLivePhotoTrimScrubberLoupeView *)photoLoupe setFrameTime:&time1];
    [(PXLivePhotoTrimScrubber *)self _presentControlsIfNeeded];
  }
}

- (void)setPlaceholderImage:(id)image
{
  objc_storeStrong(&self->_placeholderImage, image);
  imageCopy = image;
  [(PXLivePhotoTrimScrubberFilmStripView *)self->_filmstripView setLivePhotoTrimScrubberThumbnail:imageCopy];

  [(PXLivePhotoTrimScrubber *)self _updateContentAspectRatio];
}

- (void)setAsset:(id)asset videoComposition:(id)composition
{
  assetCopy = asset;
  compositionCopy = composition;
  if (self->_asset == assetCopy)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(AVAsset *)assetCopy isEqual:?]^ 1;
  }

  if (self->_videoComposition == compositionCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(AVVideoComposition *)compositionCopy isEqual:?]^ 1;
  }

  if ((v9 | v10))
  {
    objc_storeStrong(&self->_asset, asset);
    objc_storeStrong(&self->_videoComposition, composition);
    v11 = compositionCopy;
    if (v11)
    {
      v12 = v11;
      if (!self->_renderContext)
      {
        v13 = [objc_alloc(MEMORY[0x1E69B3C18]) initWithPurpose:2];
        renderContext = self->_renderContext;
        self->_renderContext = v13;
      }

      v15 = [(AVVideoComposition *)v12 mutableCopy];
      [v15 setSourceVideoTrackWindowsForTrackIDs:0];
      [v15 setSourceSampleDataTrackWindowsForTrackIDs:0];
      instructions = [v15 instructions];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __53__PXLivePhotoTrimScrubber_setAsset_videoComposition___block_invoke;
      v37 = &unk_1E7747140;
      v38 = v15;
      selfCopy = self;
      v17 = v15;
      v18 = PFMap();

      v19 = [v18 copy];
      [v17 setInstructions:v19];

      v20 = [v17 copy];
    }

    else
    {
      v20 = 0;
    }

    [(PXLivePhotoTrimScrubberFilmStripView *)self->_filmstripView setAsset:self->_asset videoComposition:v20];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v22 = [standardUserDefaults dictionaryForKey:@"IPXRootSettings"];

    v23 = [v22 objectForKeyedSubscript:@"PXSettingsArchiveKey"];
    v24 = [v23 objectForKeyedSubscript:@"editSettings"];
    v25 = [v24 objectForKeyedSubscript:@"disableScrubberLoupe"];
    bOOLValue = [v25 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      [(PXLivePhotoTrimScrubberLoupeView *)self->_photoLoupe setAsset:self->_asset videoComposition:v20];
    }

    [(PXLivePhotoTrimScrubber *)self _updateContentAspectRatio];
    if (assetCopy)
    {
      [(AVAsset *)assetCopy duration];
    }

    else
    {
      v32 = 0uLL;
      v33 = 0;
    }

    *location = v32;
    v31 = v33;
    [(PXLivePhotoTrimScrubber *)self _setUntrimmedDuration:location];
    array = [MEMORY[0x1E695DF70] array];
    if ([(AVAsset *)assetCopy statusOfValueForKey:@"duration" error:0]!= 2)
    {
      [array addObject:@"duration"];
    }

    if ([(AVAsset *)assetCopy statusOfValueForKey:@"tracks" error:0]!= 2)
    {
      [array addObject:@"tracks"];
    }

    if ([array count])
    {
      objc_initWeak(location, self);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __53__PXLivePhotoTrimScrubber_setAsset_videoComposition___block_invoke_2;
      v28[3] = &unk_1E774C318;
      objc_copyWeak(&v29, location);
      [(AVAsset *)assetCopy loadValuesAsynchronouslyForKeys:array completionHandler:v28];
      objc_destroyWeak(&v29);
      objc_destroyWeak(location);
    }
  }
}

id __53__PXLivePhotoTrimScrubber_setAsset_videoComposition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) instructions];
  v3 = [v2 firstObject];
  v4 = [v3 copy];

  [v4 setRenderContext:*(*(a1 + 40) + 576)];
  [v4 setName:@"PXLivePhotoTrimScrubber"];

  return v4;
}

void __53__PXLivePhotoTrimScrubber_setAsset_videoComposition___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PXLivePhotoTrimScrubber_setAsset_videoComposition___block_invoke_3;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __53__PXLivePhotoTrimScrubber_setAsset_videoComposition___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _assetDidLoadValues];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToAssetDurationDidChange = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidTapElement = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToCanBeginInteractivelyEditingElement = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidBeginInteractivelyEditingElement = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidEndInteractivelyEditingElement = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidChangeTimeForElement = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidChangeLoupeRect = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidZoomToMinimumValueMaximumValue = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidUnzoom = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToPausePlayer = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidLayoutSubviews = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDebugStartRect = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDebugEndRect = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDebugStartOffset = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDebugEndOffset = objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      [(PXLivePhotoTrimScrubberFilmStripView *)self->_filmstripView setThumbnailUpdatingDelegate:obj];
    }
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = PXLivePhotoTrimScrubber;
  [(PXLivePhotoTrimScrubber *)&v27 layoutSubviews];
  [(PXLivePhotoTrimScrubber *)self _updateSpecDependentUI];
  [(PXLivePhotoTrimScrubber *)self _newScrubberLayoutSubviews];
  if ([(PXLivePhotoTrimScrubber *)self showVideoScrubberDebugOverlay])
  {
    spec = [(PXLivePhotoTrimScrubber *)self spec];
    [spec scrubberHeight];
    v5 = v4;

    layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
    [(PXLivePhotoTrimScrubber *)self trimStartTime];
    [layoutHelper offsetInScrubberSpaceForTime:v26];
    v8 = v7;

    layoutHelper2 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
    [(PXLivePhotoTrimScrubber *)self keyTime];
    [layoutHelper2 offsetInScrubberSpaceForTime:v26];
    v11 = v10;

    layoutHelper3 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
    [(PXLivePhotoTrimScrubber *)self trimEndTime];
    [layoutHelper3 offsetInScrubberSpaceForTime:v26];
    v14 = v13;

    [(UIView *)self->_debugStartTimeView setFrame:v8, 0.0, 1.0, v5];
    [(UIView *)self->_debugLoupeTimeView setFrame:v11, 0.0, 1.0, v5];
    [(UIView *)self->_debugEndTimeView setFrame:v14, 0.0, 1.0, v5];
    if (self->_delegateFlags.respondsToDebugStartOffset)
    {
      [(UIView *)self->_debugStartTimeView frame];
      x = v28.origin.x;
      width = v28.size.width;
      height = v28.size.height;
      v18 = v28.origin.y - CGRectGetHeight(v28);
      delegate = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate trimScrubber:self debugStartOffset:{x, v18, width, height}];
    }

    if (self->_delegateFlags.respondsToDebugEndOffset)
    {
      [(UIView *)self->_debugEndTimeView frame];
      v20 = v29.origin.x;
      v21 = v29.size.width;
      v22 = v29.size.height;
      v23 = v29.origin.y - CGRectGetHeight(v29);
      delegate2 = [(PXLivePhotoTrimScrubber *)self delegate];
      [delegate2 trimScrubber:self debugEndOffset:{v20, v23, v21, v22}];
    }
  }

  if (self->_delegateFlags.respondsToDidLayoutSubviews)
  {
    delegate3 = [(PXLivePhotoTrimScrubber *)self delegate];
    [delegate3 trimScrubberDidLayoutSubviews:self];
  }
}

- (void)_newScrubberLayoutSubviews
{
  v94 = *MEMORY[0x1E69E9840];
  spec = [(PXLivePhotoTrimScrubber *)self spec];
  [spec scrubberHeight];
  v5 = v4;
  [(PXLivePhotoTrimScrubber *)self horizontalInset];
  v7 = v6;
  [spec handleWidth];
  v80 = v8;
  [spec handleHeight];
  v85 = v9;
  [(PXLivePhotoTrimScrubber *)self bounds];
  v10 = (CGRectGetHeight(v95) - v5) * 0.5;
  [spec filmstripViewInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v86 = v7 + v13;
  v77 = v13;
  [(PXLivePhotoTrimScrubber *)self bounds];
  v76 = v7;
  v81 = v5;
  [(PXLivePhotoTrimScrubber *)self backingAlignedRectForRect:v86, v10 + v12, CGRectGetWidth(v96) + v7 * -2.0 - v14 - v18, v5 - v12 - v16];
  [(UIView *)self->_filmstripContainerView setFrame:?];
  [(UIView *)self->_filmstripContainerView frame];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  layoutHelper = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  [layoutHelper setViewportFrame:{v20, v22, v24, v26}];

  layoutHelper2 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  [layoutHelper2 filmstripFrameInScrubberSpace];
  v30 = v29;
  v83 = v32;
  v84 = v31;
  rect = v33;

  [(PXLivePhotoTrimScrubber *)self _keyHandleRect];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  memset(&v92, 0, sizeof(v92));
  [(PXLivePhotoTrimScrubber *)self trimEndTime];
  [(PXLivePhotoTrimScrubber *)self trimStartTime];
  CMTimeSubtract(&v92, &lhs, &rhs);
  memset(&rhs, 0, sizeof(rhs));
  [(PXLivePhotoTrimScrubber *)self trimStartTime];
  time = v92;
  CMTimeMultiplyByRatio(&v90, &time, 1, 2);
  CMTimeAdd(&rhs, &lhs, &v90);
  layoutHelper3 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  lhs = rhs;
  [layoutHelper3 offsetInScrubberSpaceForTime:&lhs fallbackAnchor:0.5];
  v44 = v43;

  v87 = floor(v44);
  v79 = *(MEMORY[0x1E695F058] + 8);
  playheadStyle = [(PXLivePhotoTrimScrubber *)self playheadStyle];
  memset(&v90, 0, sizeof(v90));
  [(PXLivePhotoTrimScrubber *)self trimStartTime];
  layoutHelper4 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  lhs = v90;
  [layoutHelper4 offsetInScrubberSpaceForTime:&lhs fallbackAnchor:0.0];
  v48 = v47;

  memset(&time, 0, sizeof(time));
  [(PXLivePhotoTrimScrubber *)self trimEndTime];
  layoutHelper5 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  lhs = time;
  [layoutHelper5 offsetInScrubberSpaceForTime:&lhs fallbackAnchor:1.0];
  v51 = v50;

  v52 = v51 - v48;
  v53 = v35;
  v97.origin.x = v35;
  v97.origin.y = v37;
  v97.size.width = v39;
  v97.size.height = v41;
  Width = CGRectGetWidth(v97);
  v78 = v30;
  v98.origin.x = v30;
  v98.size.width = v83;
  v98.origin.y = v84;
  v98.size.height = rect;
  v55 = Width <= v52;
  v56 = CGRectGetMinX(v98) - v77;
  v57 = !v55 && playheadStyle == 2;
  v58 = !v57;
  v75 = v41;
  if (v57)
  {
    v99.origin.x = v53;
    v59 = v37;
    v99.origin.y = v37;
    v99.size.width = v39;
    v99.size.height = v41;
    MinX = CGRectGetMinX(v99);
  }

  else
  {
    v59 = v37;
    MinX = v76 + v48;
  }

  v61 = MinX - v77;
  if (v56 >= v61)
  {
    v62 = v56;
  }

  else
  {
    v62 = v61;
  }

  v63 = v85;
  if (v80 >= v87 - v62)
  {
    v64 = v80;
  }

  else
  {
    v64 = v87 - v62;
  }

  v65 = v62;
  v66 = v79;
  v67 = CGRectGetMinX(*(&v63 - 3));
  v88 = 0uLL;
  layoutHelper6 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  v69 = layoutHelper6;
  if (layoutHelper6)
  {
    [layoutHelper6 timeForOffsetInScrubberSpace:v80 * 0.5 + v67];
  }

  else
  {
    v88 = 0uLL;
  }

  layoutHelper7 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  *&lhs.value = v88;
  lhs.epoch = 0;
  [layoutHelper7 offsetInViewportSpaceForTime:&lhs];
  v72 = v71;

  layoutHelper8 = [(PXLivePhotoTrimScrubber *)self layoutHelper];
  [layoutHelper8 filmstripFrame];
  v74 = CGRectGetMinX(v100);

  [(PXLivePhotoTrimScrubber *)self backingAlignedRectForRect:v74, v79, v72 - v74, v81];
  [(UIView *)self->_preTrimOverlayView setFrame:?];
  v101.origin.x = v78;
  v101.size.width = v83;
  v101.origin.y = v84;
  v101.size.height = rect;
  CGRectGetMaxX(v101);
  if ((v58 & 1) == 0)
  {
    v102.size.width = v39;
    v102.origin.x = v53;
    v102.origin.y = v59;
    v102.size.height = v75;
    CGRectGetMaxX(v102);
  }

  PXClamp();
}

void __53__PXLivePhotoTrimScrubber__newScrubberLayoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutHelper];
  [v2 filmstripFrame];
  [*(*(a1 + 32) + 424) setFrame:?];

  v3 = [*(a1 + 32) layoutHelper];
  [v3 visibleFrameInFilmstripSpace];
  [*(*(a1 + 32) + 424) setVisibleRect:?];
}

- (PXLivePhotoTrimScrubber)initWithFilmStripViewClass:(Class)class spec:(id)spec traitCollection:(id)collection
{
  specCopy = spec;
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = PXLivePhotoTrimScrubber;
  v10 = [(PXLivePhotoTrimScrubber *)&v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_filmStripViewClass, class);
    v12 = specCopy;
    if (!specCopy)
    {
      v12 = objc_opt_new();
    }

    objc_storeStrong(&v11->_spec, v12);
    if (!specCopy)
    {
    }

    objc_storeStrong(&v11->_traitCollection, collection);
    v13 = objc_alloc_init(PXTrimScrubberLayoutHelper);
    layoutHelper = v11->_layoutHelper;
    v11->_layoutHelper = v13;

    [(PXLivePhotoTrimScrubber *)v11 _PXLivePhotoTrimScrubber_commonInit];
  }

  return v11;
}

+ (id)createSnappingControllerWithSnappingTarget:(double)target
{
  v3 = [[PXSnappingController alloc] initWithSnappingTarget:target];

  return v3;
}

+ (id)_createSnappingControllersForKeytimes:(id)keytimes
{
  v20 = *MEMORY[0x1E69E9840];
  keytimesCopy = keytimes;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(keytimesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = keytimesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        memset(&v14[1], 0, sizeof(CMTime));
        if (v10)
        {
          [v10 CMTimeValue];
        }

        v14[0] = v14[1];
        Seconds = CMTimeGetSeconds(v14);
        v12 = [objc_opt_class() createSnappingControllerWithSnappingTarget:Seconds];
        [v12 setAttractionOffsetThreshold:0.05];
        [v12 setRetentionOffsetThreshold:0.1];
        [v12 setAttractionVelocityThreshold:100.0];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

@end