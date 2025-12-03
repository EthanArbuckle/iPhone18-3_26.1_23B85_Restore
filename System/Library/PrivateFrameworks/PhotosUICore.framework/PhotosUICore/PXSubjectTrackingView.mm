@interface PXSubjectTrackingView
+ (CGPoint)denormalizePoint:(CGPoint)point masterSize:(CGSize)size flipYCoordinate:(BOOL)coordinate;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentCinematographyTime;
- (BOOL)_focusOnFixedLocationAtDetection:(id)detection strong:(BOOL)strong;
- (BOOL)_focusOnFixedLocationAtPoint:(CGPoint)point strong:(BOOL)strong;
- (BOOL)_focusOnGroup:(int64_t)group atTime:(id *)time strong:(BOOL)strong;
- (BOOL)_focusOnTrackWithID:(int64_t)d atTime:(id *)time strong:(BOOL)strong;
- (BOOL)_isValidTrackingRect:(CGRect)rect;
- (BOOL)focusOnDetection:(id)detection atTime:(id *)time strong:(BOOL)strong;
- (BOOL)focusOnTrack:(id)track atTime:(id *)time strong:(BOOL)strong;
- (CGPoint)normalizedPointForViewPoint:(CGPoint)point;
- (CGPoint)viewPointForNormalizedPoint:(CGPoint)point;
- (CGRect)_reframeWithinVideo:(CGRect)video isFixedFocus:(BOOL)focus fixedFocusCenter:(CGPoint)center;
- (CGRect)frameForDetection:(id)detection;
- (CGRect)viewFrameForNormalizedRect:(CGRect)rect;
- (NSDictionary)detectionViewCache;
- (PXSubjectTrackingLayoutDelegate)layoutDelegate;
- (PXSubjectTrackingView)initWithMediaView:(id)view cineController:(id)controller;
- (PXSubjectTrackingViewDelegate)delegate;
- (double)_smoothenFromValue:(double)value toNewValue:(double)newValue forTime:(double)time tolerance:(double)tolerance;
- (id)_axDescriptionForCacheKey:(id)key;
- (id)_hitDetectionAtPoint:(CGPoint)point;
- (int64_t)addFocusTrack:(id)track atTime:(id *)time strong:(BOOL)strong;
- (void)_disparitySampleFinishedWithResponse:(id)response time:(id *)time rect:(CGRect)rect strong:(BOOL)strong;
- (void)_finishedProcessingTrackedObject:(id)object;
- (void)_newTrackWasAddedAndFocusedAtTime:(id *)time;
- (void)_objectTrackingStartedAtTime:(id *)time;
- (void)_playbackTimeDidUpdate;
- (void)_setPrimaryDetection:(id)detection focusState:(int64_t)state animated:(BOOL)animated;
- (void)_trackAndFocusObjectAtPoint:(CGPoint)point strong:(BOOL)strong;
- (void)_trackedObjectAtPoint:(CGPoint)point failedWithError:(id)error;
- (void)_trackedObjectAtPoint:(CGPoint)point finishedWithResponse:(id)response trackStartTime:(id *)time strongTrack:(BOOL)track;
- (void)_trackedObjectWasUpdatedAtTime:(id *)time trackedRect:(CGRect)rect confidence:(float)confidence shouldStop:(BOOL *)stop;
- (void)_updateCinematographyFrameWithTime:(id *)time;
- (void)_updateDetectionViewCache;
- (void)_updateFocusStateAnimated:(BOOL)animated;
- (void)handleDoubleSelectOnPoint:(CGPoint)point;
- (void)handleInteractionBegan;
- (void)handleSingleSelectOnPoint:(CGPoint)point;
- (void)layoutSubviews;
- (void)renderDidChange:(BOOL)change;
- (void)scriptDidUpdate;
- (void)setCinematographyFrame:(id)frame animate:(BOOL)animate;
- (void)setFocusState:(int64_t)state detection:(id)detection;
- (void)setFocusStateBadgeVisible:(BOOL)visible autoHide:(BOOL)hide;
- (void)setViewEnabled:(BOOL)enabled;
- (void)showTrackingInformationalString:(id)string;
@end

@implementation PXSubjectTrackingView

- (PXSubjectTrackingLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (PXSubjectTrackingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_axDescriptionForCacheKey:(id)key
{
  keyCopy = key;
  cinematographyFrame = [(PXSubjectTrackingView *)self cinematographyFrame];
  v6 = cinematographyFrame;
  if (cinematographyFrame && ([cinematographyFrame allDetections], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = [v6 detectionForTrackIdentifier:{objc_msgSend(keyCopy, "integerValue")}];
    v10 = v9;
    if (v9)
    {
      v11 = [MEMORY[0x1E69C4F70] accessibilityLabelForDetectionType:{objc_msgSend(v9, "detectionType")}];
    }

    else
    {
      v11 = &stru_1F1741150;
    }
  }

  else
  {
    v11 = &stru_1F1741150;
  }

  return v11;
}

- (void)showTrackingInformationalString:(id)string
{
  stringCopy = string;
  [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:1 autoHide:1];
  delegate = [(PXSubjectTrackingView *)self delegate];
  focusStateBadge = [(PXSubjectTrackingView *)self focusStateBadge];
  [delegate setMessage:stringCopy forFocusStateBadge:focusStateBadge];

  [(PXSubjectTrackingView *)self setNeedsLayout];
}

- (int64_t)addFocusTrack:(id)track atTime:(id *)time strong:(BOOL)strong
{
  strongCopy = strong;
  trackCopy = track;
  cineController = [(PXSubjectTrackingView *)self cineController];
  cinematographyScript = [cineController cinematographyScript];
  v11 = [cinematographyScript addTrack:trackCopy];

  if (v11)
  {
    cineController2 = [(PXSubjectTrackingView *)self cineController];
    cinematographyScript2 = [cineController2 cinematographyScript];
    trackIdentifier = [trackCopy trackIdentifier];
    v18 = *&time->var0;
    var3 = time->var3;
    v15 = [cinematographyScript2 focusOnTrackIdentifier:trackIdentifier atTime:&v18 strong:strongCopy];

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)_trackedObjectAtPoint:(CGPoint)point finishedWithResponse:(id)response trackStartTime:(id *)time strongTrack:(BOOL)track
{
  trackCopy = track;
  y = point.y;
  x = point.x;
  v20 = 0;
  v11 = [response result:&v20];
  v12 = v20;
  if (v11)
  {
    completedTrack = [v11 completedTrack];
    if (completedTrack)
    {
      v14 = completedTrack;
      v18 = *&time->var0;
      var3 = time->var3;
      v15 = [(PXSubjectTrackingView *)self addFocusTrack:completedTrack atTime:&v18 strong:trackCopy];
      if (v15 == 2)
      {
        [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Tap-to-track error: cinematographyScript failed to focus on new track: %@", v14}];
      }

      else
      {
        if (v15 != 1)
        {
          [(PXSubjectTrackingView *)self _finishedProcessingTrackedObject:v14];
          v18 = *&time->var0;
          var3 = time->var3;
          [(PXSubjectTrackingView *)self _newTrackWasAddedAndFocusedAtTime:&v18];
          goto LABEL_11;
        }

        [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Tap-to-track error: cinematographyScript failed to add new track: %@", v14}];
      }
      v17 = ;
      [(PXSubjectTrackingView *)self _trackedObjectAtPoint:v17 failedWithError:x, y];
    }

    else
    {
      v16 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Tap-to-track error: result did not contain completedTrack: %@", v11}];
      [(PXSubjectTrackingView *)self _trackedObjectAtPoint:v16 failedWithError:x, y];

      v14 = 0;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] px_genericErrorWithUnderlyingError:v12 debugDescription:{@"Tap-to-track error: tracking failed with error %@", v12}];
    [(PXSubjectTrackingView *)self _trackedObjectAtPoint:v14 failedWithError:x, y];
  }

LABEL_11:
}

- (void)_trackedObjectAtPoint:(CGPoint)point failedWithError:(id)error
{
  y = point.y;
  x = point.x;
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = errorCopy;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Tap-to-track failed with error: %@", &v11, 0xCu);
  }

  delegate = [(PXSubjectTrackingView *)self delegate];
  [delegate objectTrackingFinishedWithSuccess:0];

  inProgressTrackingView = [(PXSubjectTrackingView *)self inProgressTrackingView];
  [inProgressTrackingView removeFromSuperview];

  [(PXSubjectTrackingView *)self setInProgressTrackingView:0];
  [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:0 autoHide:0];
  [(PXSubjectTrackingView *)self _focusOnFixedLocationAtPoint:0 strong:x, y];
}

- (void)_finishedProcessingTrackedObject:(id)object
{
  objectCopy = object;
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Tap-to-track finished with success", v12, 2u);
  }

  delegate = [(PXSubjectTrackingView *)self delegate];
  [delegate objectTrackingFinishedWithSuccess:1];

  trackIdentifier = [objectCopy trackIdentifier];
  detectionViewCache = [(PXSubjectTrackingView *)self detectionViewCache];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:trackIdentifier];
  v10 = [detectionViewCache objectForKey:v9];

  if (v10)
  {
    inProgressTrackingView = [(PXSubjectTrackingView *)self inProgressTrackingView];
    [inProgressTrackingView removeFromSuperview];

    [(PXSubjectTrackingView *)self setInProgressTrackingView:0];
  }

  else
  {
    [(PXSubjectTrackingView *)self setInProgressTrackID:trackIdentifier];
    [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:1];
  }

  [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:0 autoHide:0];
}

- (void)_trackedObjectWasUpdatedAtTime:(id *)time trackedRect:(CGRect)rect confidence:(float)confidence shouldStop:(BOOL *)stop
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *time;
    v14 = CMTimeCopyDescription(0, &v30);
    LODWORD(v30.var0) = 138412290;
    *(&v30.var0 + 4) = v14;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Tap-to-track progress: t=%@", &v30, 0xCu);
  }

  delegate = [(PXSubjectTrackingView *)self delegate];
  v30 = *time;
  [delegate trackedObjectWasUpdatedAtTime:&v30 shouldStop:stop];

  inProgressTrackingView = [(PXSubjectTrackingView *)self inProgressTrackingView];

  if (!inProgressTrackingView)
  {
    [(PXSubjectTrackingView *)self viewFrameForNormalizedRect:x, y, width, height];
    [PXSubjectTrackingView _reframeWithinVideo:"_reframeWithinVideo:isFixedFocus:fixedFocusCenter:" isFixedFocus:0 fixedFocusCenter:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    delegate2 = [(PXSubjectTrackingView *)self delegate];
    v26 = [delegate2 newTrackingViewWithFrame:5 initialState:{v18, v20, v22, v24}];
    [(PXSubjectTrackingView *)self setInProgressTrackingView:v26];

    inProgressTrackingView2 = [(PXSubjectTrackingView *)self inProgressTrackingView];
    [(PXSubjectTrackingView *)self insertSubview:inProgressTrackingView2 atIndex:0];

    [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:1 autoHide:0];
    delegate3 = [(PXSubjectTrackingView *)self delegate];
    focusStateBadge = [(PXSubjectTrackingView *)self focusStateBadge];
    [delegate3 setTrackingInProgressTextForFocusStateBadge:focusStateBadge];
  }
}

- (void)_objectTrackingStartedAtTime:(id *)time
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *time;
    v6 = CMTimeCopyDescription(0, &v8);
    LODWORD(v8.var0) = 138412290;
    *(&v8.var0 + 4) = v6;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Tap-to-track started: t=%@", &v8, 0xCu);
  }

  delegate = [(PXSubjectTrackingView *)self delegate];
  v8 = *time;
  [delegate objectTrackingStartedAtTime:&v8];
}

- (void)_trackAndFocusObjectAtPoint:(CGPoint)point strong:(BOOL)strong
{
  y = point.y;
  x = point.x;
  delegate = [(PXSubjectTrackingView *)self delegate];
  composition = [delegate composition];

  v28 = 0uLL;
  v29 = 0;
  [(PXSubjectTrackingView *)self _currentCinematographyTime];
  [(PXSubjectTrackingView *)self normalizedPointForViewPoint:x, y];
  v11 = v10;
  v13 = v12;
  objc_initWeak(&location, self);
  v25 = v28;
  v26 = v29;
  [(PXSubjectTrackingView *)self _objectTrackingStartedAtTime:&v25];
  v14 = objc_alloc(MEMORY[0x1E69BDF78]);
  v25 = v28;
  v26 = v29;
  v15 = [v14 initWithComposition:composition startTime:&v25 pointToTrack:{v11, v13}];
  v16 = MEMORY[0x1E69E96A0];
  v17 = MEMORY[0x1E69E96A0];
  [v15 setResponseQueue:v16];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60__PXSubjectTrackingView__trackAndFocusObjectAtPoint_strong___block_invoke;
  v23[3] = &unk_1E773FBE0;
  objc_copyWeak(&v24, &location);
  [v15 setProgressHandler:v23];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__PXSubjectTrackingView__trackAndFocusObjectAtPoint_strong___block_invoke_2;
  v18[3] = &unk_1E773FC08;
  objc_copyWeak(v19, &location);
  v19[1] = *&x;
  v19[2] = *&y;
  v20 = v28;
  v21 = v29;
  strongCopy = strong;
  [v15 submit:v18];
  objc_destroyWeak(v19);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
}

void __60__PXSubjectTrackingView__trackAndFocusObjectAtPoint_strong___block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, double a4, double a5, double a6, double a7, float a8)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v17 = *a2;
  v18 = *(a2 + 2);
  *&v16 = a8;
  [WeakRetained _trackedObjectWasUpdatedAtTime:&v17 trackedRect:a3 confidence:a4 shouldStop:{a5, a6, a7, v16}];
}

void __60__PXSubjectTrackingView__trackAndFocusObjectAtPoint_strong___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 80);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  [WeakRetained _trackedObjectAtPoint:v3 finishedWithResponse:&v8 trackStartTime:v5 strongTrack:{v6, v7}];
}

- (void)_disparitySampleFinishedWithResponse:(id)response time:(id *)time rect:(CGRect)rect strong:(BOOL)strong
{
  strongCopy = strong;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v12 = [response result:{&v25, time}];
  v13 = v25;
  if (v12)
  {
    [v12 sampledDisparityValue];
    v15 = v14;
    v16 = objc_alloc(MEMORY[0x1E69C4F70]);
    *buf = *MEMORY[0x1E6960C68];
    v27 = *(MEMORY[0x1E6960C68] + 16);
    LODWORD(v17) = v15;
    v18 = [v16 initWithTime:buf rect:x focusDistance:{y, width, height, v17}];
    v19 = [objc_alloc(MEMORY[0x1E69C4F78]) initWithDetection:v18];
    memset(buf, 0, sizeof(buf));
    v27 = 0;
    [(PXSubjectTrackingView *)self _currentCinematographyTime];
    v23 = *buf;
    v24 = v27;
    v20 = [(PXSubjectTrackingView *)self addFocusTrack:v19 atTime:&v23 strong:strongCopy];
    if (v20 == 2)
    {
      v21 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        v22 = "Tap-to-track error: couldn't focus on track";
        goto LABEL_10;
      }
    }

    else
    {
      if (v20 != 1)
      {
        v23 = *buf;
        v24 = v27;
        [(PXSubjectTrackingView *)self _newTrackWasAddedAndFocusedAtTime:&v23];
        goto LABEL_13;
      }

      v21 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        v22 = "Fixed-focus error: couldn't add track";
LABEL_10:
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, v22, &v23, 2u);
      }
    }

LABEL_13:
    goto LABEL_14;
  }

  v18 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v13;
    _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_ERROR, "Fixed-focus error: disparity sampling failed with error %@", buf, 0xCu);
  }

LABEL_14:
}

- (BOOL)_focusOnFixedLocationAtPoint:(CGPoint)point strong:(BOOL)strong
{
  y = point.y;
  x = point.x;
  delegate = [(PXSubjectTrackingView *)self delegate];
  composition = [delegate composition];

  v30 = 0uLL;
  v31 = 0;
  [(PXSubjectTrackingView *)self _currentCinematographyTime];
  [(PXSubjectTrackingView *)self normalizedPointForViewPoint:x, y];
  v11 = v10;
  v13 = v12;
  objc_initWeak(&location, self);
  v14 = objc_alloc(MEMORY[0x1E69BDE30]);
  v15 = v11 + -0.05;
  v16 = v13 + -0.05;
  v27 = v30;
  v28 = v31;
  v17 = [v14 initWithComposition:composition time:&v27 sampleRect:{v15, v16, 0.1, 0.1}];
  v18 = MEMORY[0x1E69E96A0];
  v19 = MEMORY[0x1E69E96A0];
  [v17 setResponseQueue:v18];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__PXSubjectTrackingView__focusOnFixedLocationAtPoint_strong___block_invoke;
  v21[3] = &unk_1E773FBB8;
  objc_copyWeak(v22, &location);
  v25 = v31;
  v22[1] = *&v15;
  v22[2] = *&v16;
  v23 = vdupq_n_s64(0x3FB999999999999AuLL);
  v24 = v30;
  strongCopy = strong;
  [v17 submit:v21];
  objc_destroyWeak(v22);

  objc_destroyWeak(&location);
  return 1;
}

void __61__PXSubjectTrackingView__focusOnFixedLocationAtPoint_strong___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 96);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  [WeakRetained _disparitySampleFinishedWithResponse:v3 time:&v6 rect:v5 strong:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (BOOL)_focusOnFixedLocationAtDetection:(id)detection strong:(BOOL)strong
{
  strongCopy = strong;
  v15 = 0uLL;
  v16 = 0;
  detectionCopy = detection;
  [(PXSubjectTrackingView *)self _currentCinematographyTime];
  v7 = [objc_alloc(MEMORY[0x1E69C4F78]) initWithDetection:detectionCopy];

  v13 = v15;
  v14 = v16;
  v8 = [(PXSubjectTrackingView *)self addFocusTrack:v7 atTime:&v13 strong:strongCopy];
  if (v8 == 2)
  {
    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      v10 = "Tap-to-track error: couldn't focus on track";
      goto LABEL_7;
    }
  }

  else
  {
    if (v8 != 1)
    {
      v13 = v15;
      v14 = v16;
      [(PXSubjectTrackingView *)self _newTrackWasAddedAndFocusedAtTime:&v13];
      v11 = 1;
      goto LABEL_10;
    }

    v9 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      v10 = "Fixed-focus error: couldn't add track";
LABEL_7:
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, v10, &v13, 2u);
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)_newTrackWasAddedAndFocusedAtTime:(id *)time
{
  [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:1];
  [(PXSubjectTrackingView *)self _updateFocusStateAnimated:1];
  delegate = [(PXSubjectTrackingView *)self delegate];
  v6 = *time;
  [delegate trackingWasEditedAtTime:&v6];
}

- (BOOL)focusOnDetection:(id)detection atTime:(id *)time strong:(BOOL)strong
{
  strongCopy = strong;
  detectionCopy = detection;
  [detectionCopy groupIdentifier];
  if (PTGroupIDIsValid())
  {
    groupIdentifier = [detectionCopy groupIdentifier];

    v12 = *&time->var0;
    var3 = time->var3;
    return [(PXSubjectTrackingView *)self _focusOnGroup:groupIdentifier atTime:&v12 strong:strongCopy];
  }

  else
  {
    trackIdentifier = [detectionCopy trackIdentifier];

    v12 = *&time->var0;
    var3 = time->var3;
    return [(PXSubjectTrackingView *)self _focusOnTrackWithID:trackIdentifier atTime:&v12 strong:strongCopy];
  }
}

- (BOOL)_focusOnGroup:(int64_t)group atTime:(id *)time strong:(BOOL)strong
{
  strongCopy = strong;
  v18 = *MEMORY[0x1E69E9840];
  cineController = [(PXSubjectTrackingView *)self cineController];
  cinematographyScript = [cineController cinematographyScript];
  v17 = *time;
  v11 = [cinematographyScript focusOnGroupIdentifier:group atTime:&v17 strong:strongCopy];

  v12 = PLPhotoEditGetLog();
  delegate = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"weak";
      if (strongCopy)
      {
        v14 = @"strong";
      }

      LODWORD(v17.var0) = 138412546;
      *(&v17.var0 + 4) = v14;
      LOWORD(v17.var2) = 2048;
      *(&v17.var2 + 2) = group;
      _os_log_impl(&dword_1A3C1C000, delegate, OS_LOG_TYPE_DEFAULT, "Engine successfully placed %@ focus on group with ID %ld", &v17, 0x16u);
    }

    delegate = [(PXSubjectTrackingView *)self delegate];
    v17 = *time;
    [delegate trackingWasEditedAtTime:&v17];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = @"weak";
    if (strongCopy)
    {
      v15 = @"strong";
    }

    LODWORD(v17.var0) = 138412546;
    *(&v17.var0 + 4) = v15;
    LOWORD(v17.var2) = 2048;
    *(&v17.var2 + 2) = group;
    _os_log_impl(&dword_1A3C1C000, delegate, OS_LOG_TYPE_ERROR, "Engine failed to place %@ focus on group with ID %ld", &v17, 0x16u);
  }

  return v11;
}

- (BOOL)_focusOnTrackWithID:(int64_t)d atTime:(id *)time strong:(BOOL)strong
{
  strongCopy = strong;
  v18 = *MEMORY[0x1E69E9840];
  cineController = [(PXSubjectTrackingView *)self cineController];
  cinematographyScript = [cineController cinematographyScript];
  v17 = *time;
  v11 = [cinematographyScript focusOnTrackIdentifier:d atTime:&v17 strong:strongCopy];

  v12 = PLPhotoEditGetLog();
  delegate = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"weak";
      if (strongCopy)
      {
        v14 = @"strong";
      }

      LODWORD(v17.var0) = 138412546;
      *(&v17.var0 + 4) = v14;
      LOWORD(v17.var2) = 2048;
      *(&v17.var2 + 2) = d;
      _os_log_impl(&dword_1A3C1C000, delegate, OS_LOG_TYPE_DEFAULT, "Engine successfully placed %@ focus on track with ID %ld", &v17, 0x16u);
    }

    delegate = [(PXSubjectTrackingView *)self delegate];
    v17 = *time;
    [delegate trackingWasEditedAtTime:&v17];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = @"weak";
    if (strongCopy)
    {
      v15 = @"strong";
    }

    LODWORD(v17.var0) = 138412546;
    *(&v17.var0 + 4) = v15;
    LOWORD(v17.var2) = 2048;
    *(&v17.var2 + 2) = d;
    _os_log_impl(&dword_1A3C1C000, delegate, OS_LOG_TYPE_ERROR, "Engine failed to place %@ focus on track with ID %ld", &v17, 0x16u);
  }

  return v11;
}

- (BOOL)focusOnTrack:(id)track atTime:(id *)time strong:(BOOL)strong
{
  strongCopy = strong;
  trackIdentifier = [track trackIdentifier];
  v10 = *time;
  return [(PXSubjectTrackingView *)self _focusOnTrackWithID:trackIdentifier atTime:&v10 strong:strongCopy];
}

- (void)handleInteractionBegan
{
  delegate = [(PXSubjectTrackingView *)self delegate];
  [delegate interactionBegan];
}

- (void)handleDoubleSelectOnPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v12 = *MEMORY[0x1E69E9840];
  v6 = [(PXSubjectTrackingView *)self _hitDetectionAtPoint:?];
  v7 = v6;
  if (v6)
  {
    [v6 time];
    [(PXSubjectTrackingView *)self focusOnDetection:v7 atTime:&v10 strong:1];
  }

  else
  {
    v8 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13.x = x;
      v13.y = y;
      v9 = NSStringFromCGPoint(v13);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "handleDoubleSelectOnPoint: No detection at %@", &v10, 0xCu);
    }
  }
}

- (void)handleSingleSelectOnPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  cineController = [(PXSubjectTrackingView *)self cineController];
  cinematographyScript = [cineController cinematographyScript];

  v8 = [(PXSubjectTrackingView *)self _hitDetectionAtPoint:x, y];
  v9 = v8;
  if (v8)
  {
    [v8 time];
    v10 = [cinematographyScript primaryDecisionAtTime:&v24];
    [v10 groupIdentifier];
    v11 = PTGroupIDIsValid();
    [v9 groupIdentifier];
    v12 = PTGroupIDIsValid();
    v13 = 0;
    if (v11 && v12)
    {
      groupIdentifier = [v10 groupIdentifier];
      v13 = groupIdentifier == [v9 groupIdentifier];
    }

    trackIdentifier = [v10 trackIdentifier];
    trackIdentifier2 = [v9 trackIdentifier];
    if (v13 || trackIdentifier == trackIdentifier2)
    {
      isStrongDecision = [v10 isStrongDecision];
      v24 = 0uLL;
      v25 = 0;
      if (v10)
      {
        [v10 time];
      }

      v22 = v24;
      v23 = v25;
      v18 = [cinematographyScript frameNearestTime:&v22];
      focusDetection = [v18 focusDetection];
      trackIdentifier3 = [focusDetection trackIdentifier];
      v21 = trackIdentifier3 == [v9 trackIdentifier] || v13;
      if (v21 == 1)
      {
        [(PXSubjectTrackingView *)self _currentCinematographyTime];
        [(PXSubjectTrackingView *)self focusOnDetection:v9 atTime:&v22 strong:isStrongDecision ^ 1u];
      }
    }

    else
    {
      [(PXSubjectTrackingView *)self _currentCinematographyTime];
      [(PXSubjectTrackingView *)self focusOnDetection:v9 atTime:&v24 strong:0];
    }
  }

  else
  {
    [(PXSubjectTrackingView *)self _trackAndFocusObjectAtPoint:0 strong:x, y];
  }
}

- (id)_hitDetectionAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v28 = *MEMORY[0x1E69E9840];
  cinematographyFrame = [(PXSubjectTrackingView *)self cinematographyFrame];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allDetections = [cinematographyFrame allDetections];
  v8 = [allDetections countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    v12 = INFINITY;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(allDetections);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 detectionType] != 100)
        {
          [(PXSubjectTrackingView *)self frameForDetection:v14];
          v15 = v31.origin.x;
          v16 = v31.origin.y;
          width = v31.size.width;
          height = v31.size.height;
          v30.x = x;
          v30.y = y;
          if (CGRectContainsPoint(v31, v30))
          {
            v32.origin.x = v15;
            v32.origin.y = v16;
            v32.size.width = width;
            v32.size.height = height;
            v19 = CGRectGetWidth(v32);
            v33.origin.x = v15;
            v33.origin.y = v16;
            v33.size.width = width;
            v33.size.height = height;
            v20 = v19 * CGRectGetHeight(v33);
            if (v20 < v12)
            {
              v21 = v14;

              v12 = v20;
              v10 = v21;
            }
          }
        }
      }

      v9 = [allDetections countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGPoint)normalizedPointForViewPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layoutDelegate = [(PXSubjectTrackingView *)self layoutDelegate];

  if (layoutDelegate)
  {
    layoutDelegate2 = [(PXSubjectTrackingView *)self layoutDelegate];
    [layoutDelegate2 normalizedPoint:self fromView:{x, y}];
  }

  else
  {
    layoutDelegate2 = [(PXSubjectTrackingView *)self mediaView];
    [layoutDelegate2 convertPoint:layoutDelegate2 toNormalizedYDownSourceSpaceFromView:{x, y}];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)_reframeWithinVideo:(CGRect)video isFixedFocus:(BOOL)focus fixedFocusCenter:(CGPoint)center
{
  focusCopy = focus;
  height = video.size.height;
  width = video.size.width;
  y = video.origin.y;
  x = video.origin.x;
  if (CGRectIsEmpty(video))
  {
    goto LABEL_14;
  }

  rect = x;
  layoutDelegate = [(PXSubjectTrackingView *)self layoutDelegate];

  if (layoutDelegate)
  {
    layoutDelegate2 = [(PXSubjectTrackingView *)self layoutDelegate];
    [layoutDelegate2 videoFrame];
    v55 = v13;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    mediaView = [(PXSubjectTrackingView *)self mediaView];
    [mediaView imageFrame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    layoutDelegate2 = [(PXSubjectTrackingView *)self mediaView];
    superview = [layoutDelegate2 superview];
    [(PXSubjectTrackingView *)self convertRect:superview fromView:v22, v24, v26, v28];
    v55 = v30;
    v15 = v31;
    v17 = v32;
    v19 = v33;
  }

  v58.origin.x = rect;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  MidX = CGRectGetMidX(v58);
  v59.origin.x = rect;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MidY = CGRectGetMidY(v59);
  v36 = focusCopy ? center.y : MidY;
  v37 = focusCopy ? center.x : MidX;
  v60.origin.x = v55;
  v38 = v15;
  v60.origin.y = v15;
  v60.size.width = v17;
  v39 = v19;
  v60.size.height = v19;
  if (!CGRectContainsPoint(v60, *(&v36 - 1)))
  {
LABEL_14:
    v40 = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_15;
  }

  if (focusCopy)
  {
    v40 = center.x + -37.5;
    y = center.y + -37.5;
    v41 = 1;
    width = 75.0;
    v42 = 1;
    height = 75.0;
  }

  else
  {
    v41 = width < 50.0;
    if (width < 50.0)
    {
      v61.origin.x = rect;
      v61.origin.y = y;
      v61.size.width = width;
      v61.size.height = height;
      v40 = CGRectGetMidX(v61) + -25.0;
      width = 50.0;
    }

    else
    {
      v40 = rect;
    }

    if (height >= 50.0)
    {
      v42 = 0;
    }

    else
    {
      v62.origin.x = v40;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = height;
      y = CGRectGetMidY(v62) + -25.0;
      v42 = 1;
      height = 50.0;
    }
  }

  v63.origin.x = v55;
  v63.origin.y = v38;
  v63.size.width = v17;
  v63.size.height = v39;
  v64 = CGRectInset(v63, width * 0.05 + 3.0, height * 0.05 + 3.0);
  v47 = v64.origin.x;
  v48 = v64.origin.y;
  v49 = v64.size.width;
  v50 = v64.size.height;
  if (v41)
  {
    MinX = CGRectGetMinX(v64);
    if (v40 < MinX)
    {
      v40 = MinX;
    }

    v65.origin.x = v47;
    v65.origin.y = v48;
    v65.size.width = v49;
    v65.size.height = v50;
    v52 = CGRectGetMaxX(v65) - width;
    if (v40 >= v52)
    {
      v40 = v52;
    }

    if (!v42)
    {
LABEL_24:
      if (focusCopy)
      {
        goto LABEL_15;
      }

      goto LABEL_36;
    }
  }

  else if (!v42)
  {
    goto LABEL_24;
  }

  v66.origin.x = v47;
  v66.origin.y = v48;
  v66.size.width = v49;
  v66.size.height = v50;
  MinY = CGRectGetMinY(v66);
  if (y < MinY)
  {
    y = MinY;
  }

  v67.origin.x = v47;
  v67.origin.y = v48;
  v67.size.width = v49;
  v67.size.height = v50;
  v54 = CGRectGetMaxY(v67) - height;
  if (y >= v54)
  {
    y = v54;
  }

  if (!focusCopy)
  {
LABEL_36:
    v68.origin.x = v47;
    v68.origin.y = v48;
    v68.size.width = v49;
    v68.size.height = v50;
    v72.origin.x = v40;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    if (!CGRectContainsRect(v68, v72))
    {
      v69.origin.x = v47;
      v69.origin.y = v48;
      v69.size.width = v49;
      v69.size.height = v50;
      v73.origin.x = v40;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v70 = CGRectIntersection(v69, v73);
      v40 = v70.origin.x;
      y = v70.origin.y;
      width = v70.size.width;
      height = v70.size.height;
    }
  }

LABEL_15:
  v43 = v40;
  v44 = y;
  v45 = width;
  v46 = height;
  result.size.height = v46;
  result.size.width = v45;
  result.origin.y = v44;
  result.origin.x = v43;
  return result;
}

- (CGRect)frameForDetection:(id)detection
{
  detectionCopy = detection;
  [detectionCopy rect];
  [(PXSubjectTrackingView *)self viewFrameForNormalizedRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  cineController = [(PXSubjectTrackingView *)self cineController];
  cinematographyScript = [cineController cinematographyScript];
  v15 = [cinematographyScript trackForIdentifier:{objc_msgSend(detectionCopy, "trackIdentifier")}];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = 0.0;
  v18 = 0.0;
  if (isKindOfClass)
  {
    [detectionCopy rect];
    MidX = CGRectGetMidX(v34);
    [detectionCopy rect];
    [(PXSubjectTrackingView *)self viewPointForNormalizedPoint:MidX, CGRectGetMidY(v35)];
    v17 = v20;
    v18 = v21;
  }

  [(PXSubjectTrackingView *)self _reframeWithinVideo:isKindOfClass & 1 isFixedFocus:v6 fixedFocusCenter:v8, v10, v12, v17, v18];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGPoint)viewPointForNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layoutDelegate = [(PXSubjectTrackingView *)self layoutDelegate];

  if (layoutDelegate)
  {
    layoutDelegate2 = [(PXSubjectTrackingView *)self layoutDelegate];
    [layoutDelegate2 viewPointForNormalizedPoint:{x, y}];
  }

  else
  {
    [(NUMediaView *)self->_mediaView _masterSizeWithoutGeometry];
    [PXSubjectTrackingView denormalizePoint:1 masterSize:x flipYCoordinate:y, v10, v11];
    v13 = v12;
    v15 = v14;
    layoutDelegate2 = [(PXSubjectTrackingView *)self mediaView];
    [layoutDelegate2 convertPoint:@"/masterSpace" fromSpace:self toView:{v13, v15}];
  }

  v16 = v8;
  v17 = v9;

  v18 = v16;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGRect)viewFrameForNormalizedRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layoutDelegate = [(PXSubjectTrackingView *)self layoutDelegate];

  if (!layoutDelegate)
  {
    PXRectFlippedVertically();
  }

  layoutDelegate2 = [(PXSubjectTrackingView *)self layoutDelegate];
  [layoutDelegate2 viewRectForNormalizedRect:{x, y, width, height}];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentCinematographyTime
{
  cinematographyFrame = [(PXSubjectTrackingView *)self cinematographyFrame];

  if (cinematographyFrame)
  {
    cinematographyFrame2 = [(PXSubjectTrackingView *)self cinematographyFrame];
    v7 = cinematographyFrame2;
    if (cinematographyFrame2)
    {
      [cinematographyFrame2 time];
    }

    else
    {
      v21 = 0uLL;
      v22 = 0;
    }

    *&retstr->var0 = v21;
    v11 = v22;
  }

  else
  {
    mediaView = [(PXSubjectTrackingView *)self mediaView];
    player = [mediaView player];
    v10 = player;
    if (player)
    {
      [player currentTime];
    }

    else
    {
      v21 = 0uLL;
      v22 = 0;
    }

    *&retstr->var0 = v21;
    retstr->var3 = v22;

    v21 = 0uLL;
    v22 = 0;
    mediaView2 = [(PXSubjectTrackingView *)self mediaView];
    player2 = [mediaView2 player];
    v14 = player2;
    if (player2)
    {
      [player2 currentSeekTime];
    }

    else
    {
      v21 = 0uLL;
      v22 = 0;
    }

    if (BYTE12(v21))
    {
      *&retstr->var0 = v21;
      retstr->var3 = v22;
    }

    delegate = [(PXSubjectTrackingView *)self delegate];
    v7 = delegate;
    if (delegate)
    {
      v17 = *&retstr->var0;
      var3 = retstr->var3;
      [delegate unadjustedTimeForPlayerTime:&v17];
    }

    else
    {
      v19 = 0uLL;
      v20 = 0;
    }

    *&retstr->var0 = v19;
    v11 = v20;
  }

  retstr->var3 = v11;

  return result;
}

- (void)setFocusStateBadgeVisible:(BOOL)visible autoHide:(BOOL)hide
{
  hideCopy = hide;
  visibleCopy = visible;
  if (!visible || ![(PXSubjectTrackingView *)self badgeVisibleAndWillAutoClose])
  {
    mediaView = [(PXSubjectTrackingView *)self mediaView];
    player = [mediaView player];
    [player playbackRate];
    v10 = v9;

    if (visibleCopy && v10 == 0.0)
    {
      focusStateBadge = [(PXSubjectTrackingView *)self focusStateBadge];

      if (!focusStateBadge)
      {
        delegate = [(PXSubjectTrackingView *)self delegate];
        newFocusStatusBadge = [delegate newFocusStatusBadge];
        [(PXSubjectTrackingView *)self setFocusStateBadge:newFocusStatusBadge];

        focusStateBadge2 = [(PXSubjectTrackingView *)self focusStateBadge];
        [focusStateBadge2 setAlpha:0.0];

        focusStateBadge3 = [(PXSubjectTrackingView *)self focusStateBadge];
        [(PXSubjectTrackingView *)self addSubview:focusStateBadge3];
      }

      focusStateBadge4 = [(PXSubjectTrackingView *)self focusStateBadge];
      [(PXSubjectTrackingView *)self bringSubviewToFront:focusStateBadge4];

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke;
      v30[3] = &unk_1E774C648;
      v30[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v30 animations:0.3];
      hideFocusStateBadgeTimer = [(PXSubjectTrackingView *)self hideFocusStateBadgeTimer];
      [hideFocusStateBadgeTimer invalidate];

      if (hideCopy)
      {
        [(PXSubjectTrackingView *)self setBadgeVisibleAndWillAutoClose:1];
        objc_initWeak(&location, self);
        v18 = MEMORY[0x1E695DFF0];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke_2;
        v27[3] = &unk_1E773FB90;
        v28[1] = 0x3FD3333333333333;
        objc_copyWeak(v28, &location);
        v27[4] = self;
        v19 = [v18 scheduledTimerWithTimeInterval:0 repeats:v27 block:1.3];
        [(PXSubjectTrackingView *)self setHideFocusStateBadgeTimer:v19];

        objc_destroyWeak(v28);
        objc_destroyWeak(&location);
      }

      else
      {
        [(PXSubjectTrackingView *)self setBadgeVisibleAndWillAutoClose:0];
      }
    }

    else
    {
      hideFocusStateBadgeTimer2 = [(PXSubjectTrackingView *)self hideFocusStateBadgeTimer];
      isValid = [hideFocusStateBadgeTimer2 isValid];

      if (isValid)
      {
        hideFocusStateBadgeTimer3 = [(PXSubjectTrackingView *)self hideFocusStateBadgeTimer];
        [hideFocusStateBadgeTimer3 fire];
      }

      else
      {
        focusStateBadge5 = [(PXSubjectTrackingView *)self focusStateBadge];
        [focusStateBadge5 alpha];
        v24 = v23;

        if (v24 > 0.0)
        {
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke_4;
          v26[3] = &unk_1E774C648;
          v26[4] = self;
          [MEMORY[0x1E69DD250] animateWithDuration:v26 animations:0.3];
        }
      }
    }
  }
}

void __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) focusStateBadge];
  [v1 setAlpha:1.0];
}

void __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DD250];
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke_3;
  v6[3] = &unk_1E774B248;
  objc_copyWeak(&v7, (a1 + 40));
  v6[4] = *(a1 + 32);
  [v4 animateWithDuration:v6 animations:v5];
  objc_destroyWeak(&v7);
}

uint64_t __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) focusStateBadge];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 32);

  return [v3 setBadgeVisibleAndWillAutoClose:0];
}

uint64_t __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained focusStateBadge];
  [v3 setAlpha:0.0];

  v4 = *(a1 + 32);

  return [v4 setBadgeVisibleAndWillAutoClose:0];
}

- (void)_setPrimaryDetection:(id)detection focusState:(int64_t)state animated:(BOOL)animated
{
  animatedCopy = animated;
  detectionCopy = detection;
  [(PXSubjectTrackingView *)self setFocusState:state detection:detectionCopy];
  trackIdentifier = [detectionCopy trackIdentifier];

  primaryKey = [(PXSubjectTrackingView *)self primaryKey];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:trackIdentifier];
  [(PXSubjectTrackingView *)self setPrimaryKey:v10];
  if ([primaryKey integerValue] != trackIdentifier)
  {
    [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:1];
    detectionViewCache = [(PXSubjectTrackingView *)self detectionViewCache];
    v12 = [detectionViewCache objectForKey:primaryKey];

    if (v12)
    {
      delegate = [(PXSubjectTrackingView *)self delegate];
      [delegate subjectTrackingStateDidChange:0 forView:v12 animated:animatedCopy];
    }
  }

  detectionViewCache2 = [(PXSubjectTrackingView *)self detectionViewCache];
  v15 = [detectionViewCache2 objectForKey:v10];

  delegate2 = [(PXSubjectTrackingView *)self delegate];
  [delegate2 subjectTrackingStateDidChange:state forView:v15 animated:animatedCopy];
}

- (void)_updateFocusStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cinematographyFrame = [(PXSubjectTrackingView *)self cinematographyFrame];
  v6 = cinematographyFrame;
  if (cinematographyFrame)
  {
    allDetections = [cinematographyFrame allDetections];
    v8 = [allDetections count];

    if (v8)
    {
      v23 = 0uLL;
      v24 = 0;
      [v6 time];
      cineController = [(PXSubjectTrackingView *)self cineController];
      cinematographyScript = [cineController cinematographyScript];

      v21 = v23;
      v22 = v24;
      v11 = [cinematographyScript primaryDecisionAtTime:&v21];
      v12 = [cinematographyScript trackForIdentifier:{objc_msgSend(v11, "trackIdentifier")}];
      v21 = v23;
      v22 = v24;
      v13 = [v12 detectionNearestTime:&v21];
      if ([v13 detectionType] == 100)
      {
        [(PXSubjectTrackingView *)self setPrimaryKey:0];
        [(PXSubjectTrackingView *)self _updateDetectionViewCache];
      }

      else
      {
        groupIdentifier = [v13 groupIdentifier];
        if (PTGroupIDIsValid())
        {
          v15 = [v6 bestDetectionForGroupIdentifier:groupIdentifier];

          v13 = v15;
        }

        isDiscrete = [v12 isDiscrete];
        isStrongDecision = [v11 isStrongDecision];
        v18 = 1;
        if (isStrongDecision)
        {
          v18 = 2;
        }

        v19 = 3;
        if (isStrongDecision)
        {
          v19 = 4;
        }

        if (isDiscrete)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        [(PXSubjectTrackingView *)self _setPrimaryDetection:v13 focusState:v20 animated:animatedCopy];
      }
    }
  }
}

- (void)_updateDetectionViewCache
{
  v82 = *MEMORY[0x1E69E9840];
  cinematographyFrame = [(PXSubjectTrackingView *)self cinematographyFrame];
  v4 = cinematographyFrame;
  if (cinematographyFrame)
  {
    allDetections = [cinematographyFrame allDetections];
    v6 = [allDetections count];

    if (v6)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      detectionViewCache = self->_detectionViewCache;
      if (detectionViewCache)
      {
        v8 = v4;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v9 = [(NSDictionary *)detectionViewCache mutableCopy];
        allValues = [(NSDictionary *)v9 allValues];
        v11 = [allValues countByEnumeratingWithState:&v71 objects:v81 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v72;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v72 != v13)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v71 + 1) + 8 * i) setHidden:1];
            }

            v12 = [allValues countByEnumeratingWithState:&v71 objects:v81 count:16];
          }

          while (v12);
        }

        v4 = v8;
        v15 = v9;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      selfCopy = self;
      focusDetection = [v4 focusDetection];
      allDetections2 = [v4 allDetections];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v59 = allDetections2;
      v60 = focusDetection;
      v62 = [allDetections2 countByEnumeratingWithState:&v67 objects:v80 count:16];
      if (v62)
      {
        v61 = *v68;
        v58 = v15;
        do
        {
          v18 = 0;
          do
          {
            if (*v68 != v61)
            {
              objc_enumerationMutation(allDetections2);
            }

            v19 = *(*(&v67 + 1) + 8 * v18);
            if ([v19 detectionType] != 100)
            {
              trackIdentifier = [v19 trackIdentifier];
              trackIdentifier2 = [focusDetection trackIdentifier];
              groupIdentifier = [v19 groupIdentifier];
              if (PTGroupIDIsValid())
              {
                v23 = [v4 bestDetectionForGroupIdentifier:groupIdentifier];
                trackIdentifier3 = [v19 trackIdentifier];
                v25 = v4;
                trackIdentifier4 = [v23 trackIdentifier];
                groupIdentifier2 = [v60 groupIdentifier];
                v28 = trackIdentifier3 == trackIdentifier4;
                v4 = v25;
                focusDetection = v60;
                v29 = v28;
                v30 = v28 && trackIdentifier == trackIdentifier2;
                v15 = v58;
                v31 = groupIdentifier == groupIdentifier2 ? v30 : v29;

                allDetections2 = v59;
              }

              else
              {
                v31 = 0;
              }

              if (trackIdentifier == trackIdentifier2 || v31)
              {
                trackIdentifier5 = [v19 trackIdentifier];
                v34 = [MEMORY[0x1E696AD98] numberWithInteger:trackIdentifier5];
                v35 = [(NSDictionary *)v15 objectForKey:v34];
                if (!v35)
                {
                  [(PXSubjectTrackingView *)selfCopy frameForDetection:v19];
                  x = v83.origin.x;
                  y = v83.origin.y;
                  width = v83.size.width;
                  height = v83.size.height;
                  if (CGRectIsNull(v83) || (v84.origin.x = x, v84.origin.y = y, v84.size.width = width, v84.size.height = height, CGRectIsInfinite(v84)) || (v86.origin.x = x, v86.origin.y = y, v86.size.width = width, v86.size.height = height, CGRectIsEmpty(v86)))
                  {
                    v40 = PLPhotoEditGetLog();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                    {
                      v85.origin.x = x;
                      v85.origin.y = y;
                      v85.size.width = width;
                      v85.size.height = height;
                      v41 = NSStringFromCGRect(v85);
                      *buf = 138412546;
                      v77 = v41;
                      v78 = 2112;
                      v79 = v19;
                      _os_log_impl(&dword_1A3C1C000, v40, OS_LOG_TYPE_ERROR, "Unable to create new tracker view with frame %@ detection %@", buf, 0x16u);
                    }

                    v35 = 0;
                  }

                  else
                  {
                    inProgressTrackingView = [(PXSubjectTrackingView *)selfCopy inProgressTrackingView];
                    if (inProgressTrackingView && (v43 = inProgressTrackingView, v44 = [(PXSubjectTrackingView *)selfCopy inProgressTrackID], v43, trackIdentifier5 == v44))
                    {
                      inProgressTrackingView2 = [(PXSubjectTrackingView *)selfCopy inProgressTrackingView];
                      [(NSDictionary *)v15 setObject:inProgressTrackingView2 forKey:v34];
                      [(PXSubjectTrackingView *)selfCopy setInProgressTrackingView:0];
                      [(PXSubjectTrackingView *)selfCopy setInProgressTrackID:0x7FFFFFFFFFFFFFFFLL];

                      v35 = 0;
                    }

                    else
                    {
                      v46 = PLPhotoEditGetLog();
                      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v77 = v19;
                        _os_log_impl(&dword_1A3C1C000, v46, OS_LOG_TYPE_DEFAULT, "Creating new tracker view for detection %@", buf, 0xCu);
                      }

                      delegate = [(PXSubjectTrackingView *)selfCopy delegate];
                      v35 = [delegate newTrackingViewWithFrame:0 initialState:{x, y, width, height}];

                      if (v35)
                      {
                        [(PXSubjectTrackingView *)selfCopy insertSubview:v35 atIndex:0];
                        [(NSDictionary *)v15 setObject:v35 forKey:v34];
                      }
                    }

                    allDetections2 = v59;
                  }
                }

                [v35 setHidden:0];
              }
            }

            ++v18;
          }

          while (v62 != v18);
          v48 = [allDetections2 countByEnumeratingWithState:&v67 objects:v80 count:16];
          v62 = v48;
        }

        while (v48);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      allKeys = [(NSDictionary *)v15 allKeys];
      v50 = [allKeys countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v64;
        do
        {
          for (j = 0; j != v51; ++j)
          {
            if (*v64 != v52)
            {
              objc_enumerationMutation(allKeys);
            }

            v54 = *(*(&v63 + 1) + 8 * j);
            v55 = [(NSDictionary *)v15 objectForKey:v54];
            if ([v55 isHidden])
            {
              [v55 removeFromSuperview];
              [(NSDictionary *)v15 removeObjectForKey:v54];
            }
          }

          v51 = [allKeys countByEnumeratingWithState:&v63 objects:v75 count:16];
        }

        while (v51);
      }

      [MEMORY[0x1E6979518] commit];
      v56 = selfCopy->_detectionViewCache;
      selfCopy->_detectionViewCache = v15;
    }
  }
}

- (NSDictionary)detectionViewCache
{
  if ([(PXSubjectTrackingView *)self needsUpdateViewCache]|| (detectionViewCache = self->_detectionViewCache) == 0)
  {
    [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:0];
    [(PXSubjectTrackingView *)self _updateDetectionViewCache];
    detectionViewCache = self->_detectionViewCache;
  }

  return detectionViewCache;
}

- (void)setCinematographyFrame:(id)frame animate:(BOOL)animate
{
  animateCopy = animate;
  frameCopy = frame;
  v8 = frameCopy;
  if (self->_needsUpdateFrame || ([frameCopy isEqual:self->_cinematographyFrame] & 1) == 0)
  {
    self->_needsUpdateFrame = 0;
    objc_storeStrong(&self->_cinematographyFrame, frame);
    [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:1];
    if (animateCopy)
    {
      if (![(PXSubjectTrackingView *)self isAnimating])
      {
        [(PXSubjectTrackingView *)self setNeedsLayout];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __56__PXSubjectTrackingView_setCinematographyFrame_animate___block_invoke;
        v10[3] = &unk_1E7749428;
        v10[4] = self;
        v11 = 0;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __56__PXSubjectTrackingView_setCinematographyFrame_animate___block_invoke_2;
        v9[3] = &unk_1E774B308;
        v9[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v9 completion:0.2];
      }
    }

    else
    {
      [(PXSubjectTrackingView *)self setNeedsLayout];
      [(PXSubjectTrackingView *)self _updateFocusStateAnimated:0];
    }
  }
}

uint64_t __56__PXSubjectTrackingView_setCinematographyFrame_animate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsAnimating:1];
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateFocusStateAnimated:v3];
}

- (void)_updateCinematographyFrameWithTime:(id *)time
{
  cineController = [(PXSubjectTrackingView *)self cineController];
  cinematographyScript = [cineController cinematographyScript];
  v8 = *time;
  v7 = [cinematographyScript frameNearestTime:&v8];

  [(PXSubjectTrackingView *)self setCinematographyFrame:v7 animate:0];
}

- (void)_playbackTimeDidUpdate
{
  if (self->_viewEnabled)
  {
    v24 = v2;
    v25 = v3;
    mediaView = [(PXSubjectTrackingView *)self mediaView];
    player = [mediaView player];
    playbackState = [player playbackState];

    if ((playbackState - 4) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v22 = 0uLL;
      v23 = 0;
      mediaView2 = [(PXSubjectTrackingView *)self mediaView];
      player2 = [mediaView2 player];
      v10 = player2;
      if (player2)
      {
        [player2 currentTime];
      }

      else
      {
        v22 = 0uLL;
        v23 = 0;
      }

      v20 = 0uLL;
      v21 = 0;
      mediaView3 = [(PXSubjectTrackingView *)self mediaView];
      player3 = [mediaView3 player];
      v13 = player3;
      if (player3)
      {
        [player3 currentSeekTime];
      }

      else
      {
        v20 = 0uLL;
        v21 = 0;
      }

      if (BYTE12(v20))
      {
        v22 = v20;
        v23 = v21;
      }

      delegate = [(PXSubjectTrackingView *)self delegate];
      v15 = delegate;
      if (delegate)
      {
        v16 = v22;
        v17 = v23;
        [delegate unadjustedTimeForPlayerTime:&v16];
      }

      else
      {
        v18 = 0uLL;
        v19 = 0;
      }

      v22 = v18;
      v23 = v19;

      v18 = v22;
      v19 = v23;
      [(PXSubjectTrackingView *)self _updateCinematographyFrameWithTime:&v18];
    }
  }
}

- (void)scriptDidUpdate
{
  if ([(PXSubjectTrackingView *)self needsUpdateFrameTime])
  {
    [(PXSubjectTrackingView *)self setNeedsUpdateFrameTime:0];
    [(PXSubjectTrackingView *)self _playbackTimeDidUpdate];
  }

  cinematographyScript = [(PXCinematicEditController *)self->_cineController cinematographyScript];
  [cinematographyScript setChangesDelegate:self];

  v6 = 0uLL;
  v7 = 0;
  [(PXSubjectTrackingView *)self _currentCinematographyTime];
  if (0 >> 96)
  {
    v4 = v6;
    v5 = v7;
    [(PXSubjectTrackingView *)self _updateCinematographyFrameWithTime:&v4];
  }
}

- (void)renderDidChange:(BOOL)change
{
  changeCopy = change;
  [(PXSubjectTrackingView *)self setNeedsLayout];
  if (changeCopy)
  {

    [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:0 autoHide:1];
  }
}

uint64_t __62__PXSubjectTrackingView_decisionsDidChangeInScript_timeRange___block_invoke(uint64_t a1)
{
  memset(&v7, 0, sizeof(v7));
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 _currentCinematographyTime];
  }

  v3 = *(a1 + 56);
  *&range.start.value = *(a1 + 40);
  *&range.start.epoch = v3;
  *&range.duration.timescale = *(a1 + 72);
  v5 = v7;
  result = CMTimeRangeContainsTime(&range, &v5);
  if (result)
  {
    return [*(a1 + 32) _updateFocusStateAnimated:1];
  }

  return result;
}

uint64_t __59__PXSubjectTrackingView_framesDidChangeInScript_timeRange___block_invoke(uint64_t a1)
{
  memset(&v7, 0, sizeof(v7));
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 _currentCinematographyTime];
  }

  v3 = *(a1 + 56);
  *&range.start.value = *(a1 + 40);
  *&range.start.epoch = v3;
  *&range.duration.timescale = *(a1 + 72);
  v5 = v7;
  result = CMTimeRangeContainsTime(&range, &v5);
  if (result)
  {
    return [*(a1 + 32) scriptDidUpdate];
  }

  return result;
}

- (void)setViewEnabled:(BOOL)enabled
{
  if (self->_viewEnabled != (self->_viewCanBeEnabled && enabled))
  {
    if (self->_viewCanBeEnabled && enabled)
    {
      self->_viewEnabled = 1;
      [(PXSubjectTrackingView *)self _playbackTimeDidUpdate];
    }

    else
    {
      self->_viewEnabled = 0;
    }
  }
}

- (double)_smoothenFromValue:(double)value toNewValue:(double)newValue forTime:(double)time tolerance:(double)tolerance
{
  valueCopy = value;
  v8 = newValue - value;
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 <= tolerance)
  {
    return valueCopy;
  }

  [(PXSubjectTrackingView *)self lastLayoutTime];
  if (v10 >= time || v10 + 0.1 <= time)
  {
    return newValue;
  }

  v13 = (v10 * -1000.0 + time * 1000.0) / -100.0 + 1.0;
  return (1.0 - v13) * newValue + v13 * valueCopy;
}

- (BOOL)_isValidTrackingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsNull(rect))
  {
    return 0;
  }

  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  if (CGRectIsInfinite(v8))
  {
    return 0;
  }

  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  return !CGRectIsEmpty(v9);
}

- (void)layoutSubviews
{
  v74 = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = PXSubjectTrackingView;
  [(PXSubjectTrackingView *)&v71 layoutSubviews];
  delegate = [(PXSubjectTrackingView *)self delegate];
  focusStateBadge = [(PXSubjectTrackingView *)self focusStateBadge];
  [delegate rectForFocusStateBadge:focusStateBadge];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  focusStateBadge2 = [(PXSubjectTrackingView *)self focusStateBadge];
  [focusStateBadge2 setFrame:{v6, v8, v10, v12}];

  cinematographyFrame = [(PXSubjectTrackingView *)self cinematographyFrame];
  v15 = cinematographyFrame;
  if (cinematographyFrame)
  {
    allDetections = [cinematographyFrame allDetections];
    v17 = [allDetections count];

    if (v17)
    {
      memset(&v70, 0, sizeof(v70));
      mediaView = [(PXSubjectTrackingView *)self mediaView];
      player = [mediaView player];
      v20 = player;
      if (player)
      {
        [player currentTime];
      }

      else
      {
        memset(&v70, 0, sizeof(v70));
      }

      time = v70;
      v60 = (v70.flags & 0x1D) == 1;
      detectionViewCache = [(PXSubjectTrackingView *)self detectionViewCache];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      allKeys = [detectionViewCache allKeys];
      v23 = [allKeys countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v67;
        v63 = *(MEMORY[0x1E695F058] + 8);
        v64 = *MEMORY[0x1E695F058];
        v61 = *(MEMORY[0x1E695F058] + 24);
        v62 = *(MEMORY[0x1E695F058] + 16);
        v59 = *v67;
        do
        {
          v26 = 0;
          v65 = v24;
          do
          {
            if (*v67 != v25)
            {
              objc_enumerationMutation(allKeys);
            }

            v27 = *(*(&v66 + 1) + 8 * v26);
            v28 = [detectionViewCache objectForKey:v27];
            v29 = [v15 detectionForTrackIdentifier:{objc_msgSend(v27, "integerValue")}];
            [v28 frame];
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v37 = v36;
            [(PXSubjectTrackingView *)self frameForDetection:v29];
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v45 = v44;
            if ([(PXSubjectTrackingView *)self _isValidTrackingRect:?])
            {
              if ([(PXSubjectTrackingView *)self _isValidTrackingRect:v31, v33, v35, v37])
              {
                v46 = allKeys;
                v47 = detectionViewCache;
                v48 = v15;
                mediaView2 = [(PXSubjectTrackingView *)self mediaView];
                player2 = [mediaView2 player];
                v51 = [player2 playbackState] == 3 && v60;

                if (v51 == 1)
                {
                  [(PXSubjectTrackingView *)self _smoothenFromValue:v31 toNewValue:v39 forTime:v58 tolerance:?];
                  v39 = v52;
                  [(PXSubjectTrackingView *)self _smoothenFromValue:v33 toNewValue:v41 forTime:v58 tolerance:v45 / 100.0];
                  v41 = v53;
                  [(PXSubjectTrackingView *)self _smoothenFromValue:v35 toNewValue:v43 forTime:v58 tolerance:v43 / 100.0];
                  v43 = v54;
                  [(PXSubjectTrackingView *)self _smoothenFromValue:v37 toNewValue:v45 forTime:v58 tolerance:v45 / 100.0];
                  v45 = v55;
                }

                v15 = v48;
                detectionViewCache = v47;
                allKeys = v46;
                v25 = v59;
                v24 = v65;
              }
            }

            else
            {
              v56 = PLPhotoEditGetLog();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                v75.origin.x = v39;
                v75.origin.y = v41;
                v75.size.width = v43;
                v75.size.height = v45;
                v57 = NSStringFromCGRect(v75);
                LODWORD(time.value) = 138412546;
                *(&time.value + 4) = v57;
                LOWORD(time.flags) = 2112;
                *(&time.flags + 2) = v29;
                _os_log_impl(&dword_1A3C1C000, v56, OS_LOG_TYPE_ERROR, "Invalid tracker view frame %@ detection %@", &time, 0x16u);

                v24 = v65;
              }

              v45 = v61;
              v43 = v62;
              v41 = v63;
              v39 = v64;
            }

            [v28 setFrame:{v39, v41, v43, v45}];
            v76.origin.x = v39;
            v76.origin.y = v41;
            v76.size.width = v43;
            v76.size.height = v45;
            [v28 setHidden:CGRectIsEmpty(v76)];

            ++v26;
          }

          while (v24 != v26);
          v24 = [allKeys countByEnumeratingWithState:&v66 objects:v72 count:16];
        }

        while (v24);
      }

      if (v60)
      {
        [(PXSubjectTrackingView *)self setLastLayoutTime:v58];
      }
    }
  }
}

- (void)setFocusState:(int64_t)state detection:(id)detection
{
  detectionCopy = detection;
  if ((state - 5) > 0xFFFFFFFFFFFFFFFDLL || self->_focusState != state)
  {
    v11 = detectionCopy;
    self->_focusState = state;
    undoManager = [(PXSubjectTrackingView *)self undoManager];
    if (!-[PXSubjectTrackingView badgeVisibleAndWillAutoClose](self, "badgeVisibleAndWillAutoClose") && ([undoManager isUndoing] & 1) == 0 && (objc_msgSend(undoManager, "isRedoing") & 1) == 0)
    {
      if (state > 3 || state == 2)
      {
        [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:1 autoHide:1];
        delegate = [(PXSubjectTrackingView *)self delegate];
        focusStateBadge = [(PXSubjectTrackingView *)self focusStateBadge];
        [v11 focusDistance];
        [delegate subjectFocusStateDidChange:state forBadge:focusStateBadge focusedDisparity:v10];

        [(PXSubjectTrackingView *)self setNeedsLayout];
      }

      else
      {
        [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:0 autoHide:0];
      }
    }

    detectionCopy = v11;
  }
}

- (PXSubjectTrackingView)initWithMediaView:(id)view cineController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v10 = controllerCopy;
  if (viewCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSubjectTrackingView.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSubjectTrackingView.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"cineController != nil"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = PXSubjectTrackingView;
  v11 = [(PXSubjectTrackingView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaView, view);
    objc_storeStrong(&v12->_cineController, controller);
    cinematographyScript = [(PXCinematicEditController *)v12->_cineController cinematographyScript];
    [cinematographyScript setChangesDelegate:v12];

    v12->_focusState = 0;
    v12->_viewEnabled = 0;
    v12->_viewCanBeEnabled = 1;
    objc_initWeak(&location, v12);
    player = [viewCopy player];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__PXSubjectTrackingView_initWithMediaView_cineController___block_invoke;
    v20[3] = &unk_1E77480F8;
    objc_copyWeak(&v21, &location);
    v15 = [player addPlaybackTimeObserver:v20];
    playbackTimeObserver = v12->_playbackTimeObserver;
    v12->_playbackTimeObserver = v15;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __58__PXSubjectTrackingView_initWithMediaView_cineController___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PXSubjectTrackingView_initWithMediaView_cineController___block_invoke_2;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __58__PXSubjectTrackingView_initWithMediaView_cineController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained viewEnabled];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _playbackTimeDidUpdate];
  }
}

+ (CGPoint)denormalizePoint:(CGPoint)point masterSize:(CGSize)size flipYCoordinate:(BOOL)coordinate
{
  v5 = point.x * size.width;
  v6 = point.y * size.height;
  if (coordinate)
  {
    v6 = size.height - v6;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

@end