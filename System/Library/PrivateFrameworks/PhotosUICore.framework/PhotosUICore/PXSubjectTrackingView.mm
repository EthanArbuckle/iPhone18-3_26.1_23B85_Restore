@interface PXSubjectTrackingView
+ (CGPoint)denormalizePoint:(CGPoint)a3 masterSize:(CGSize)a4 flipYCoordinate:(BOOL)a5;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentCinematographyTime;
- (BOOL)_focusOnFixedLocationAtDetection:(id)a3 strong:(BOOL)a4;
- (BOOL)_focusOnFixedLocationAtPoint:(CGPoint)a3 strong:(BOOL)a4;
- (BOOL)_focusOnGroup:(int64_t)a3 atTime:(id *)a4 strong:(BOOL)a5;
- (BOOL)_focusOnTrackWithID:(int64_t)a3 atTime:(id *)a4 strong:(BOOL)a5;
- (BOOL)_isValidTrackingRect:(CGRect)a3;
- (BOOL)focusOnDetection:(id)a3 atTime:(id *)a4 strong:(BOOL)a5;
- (BOOL)focusOnTrack:(id)a3 atTime:(id *)a4 strong:(BOOL)a5;
- (CGPoint)normalizedPointForViewPoint:(CGPoint)a3;
- (CGPoint)viewPointForNormalizedPoint:(CGPoint)a3;
- (CGRect)_reframeWithinVideo:(CGRect)a3 isFixedFocus:(BOOL)a4 fixedFocusCenter:(CGPoint)a5;
- (CGRect)frameForDetection:(id)a3;
- (CGRect)viewFrameForNormalizedRect:(CGRect)a3;
- (NSDictionary)detectionViewCache;
- (PXSubjectTrackingLayoutDelegate)layoutDelegate;
- (PXSubjectTrackingView)initWithMediaView:(id)a3 cineController:(id)a4;
- (PXSubjectTrackingViewDelegate)delegate;
- (double)_smoothenFromValue:(double)a3 toNewValue:(double)a4 forTime:(double)a5 tolerance:(double)a6;
- (id)_axDescriptionForCacheKey:(id)a3;
- (id)_hitDetectionAtPoint:(CGPoint)a3;
- (int64_t)addFocusTrack:(id)a3 atTime:(id *)a4 strong:(BOOL)a5;
- (void)_disparitySampleFinishedWithResponse:(id)a3 time:(id *)a4 rect:(CGRect)a5 strong:(BOOL)a6;
- (void)_finishedProcessingTrackedObject:(id)a3;
- (void)_newTrackWasAddedAndFocusedAtTime:(id *)a3;
- (void)_objectTrackingStartedAtTime:(id *)a3;
- (void)_playbackTimeDidUpdate;
- (void)_setPrimaryDetection:(id)a3 focusState:(int64_t)a4 animated:(BOOL)a5;
- (void)_trackAndFocusObjectAtPoint:(CGPoint)a3 strong:(BOOL)a4;
- (void)_trackedObjectAtPoint:(CGPoint)a3 failedWithError:(id)a4;
- (void)_trackedObjectAtPoint:(CGPoint)a3 finishedWithResponse:(id)a4 trackStartTime:(id *)a5 strongTrack:(BOOL)a6;
- (void)_trackedObjectWasUpdatedAtTime:(id *)a3 trackedRect:(CGRect)a4 confidence:(float)a5 shouldStop:(BOOL *)a6;
- (void)_updateCinematographyFrameWithTime:(id *)a3;
- (void)_updateDetectionViewCache;
- (void)_updateFocusStateAnimated:(BOOL)a3;
- (void)handleDoubleSelectOnPoint:(CGPoint)a3;
- (void)handleInteractionBegan;
- (void)handleSingleSelectOnPoint:(CGPoint)a3;
- (void)layoutSubviews;
- (void)renderDidChange:(BOOL)a3;
- (void)scriptDidUpdate;
- (void)setCinematographyFrame:(id)a3 animate:(BOOL)a4;
- (void)setFocusState:(int64_t)a3 detection:(id)a4;
- (void)setFocusStateBadgeVisible:(BOOL)a3 autoHide:(BOOL)a4;
- (void)setViewEnabled:(BOOL)a3;
- (void)showTrackingInformationalString:(id)a3;
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

- (id)_axDescriptionForCacheKey:(id)a3
{
  v4 = a3;
  v5 = [(PXSubjectTrackingView *)self cinematographyFrame];
  v6 = v5;
  if (v5 && ([v5 allDetections], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = [v6 detectionForTrackIdentifier:{objc_msgSend(v4, "integerValue")}];
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

- (void)showTrackingInformationalString:(id)a3
{
  v4 = a3;
  [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:1 autoHide:1];
  v5 = [(PXSubjectTrackingView *)self delegate];
  v6 = [(PXSubjectTrackingView *)self focusStateBadge];
  [v5 setMessage:v4 forFocusStateBadge:v6];

  [(PXSubjectTrackingView *)self setNeedsLayout];
}

- (int64_t)addFocusTrack:(id)a3 atTime:(id *)a4 strong:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(PXSubjectTrackingView *)self cineController];
  v10 = [v9 cinematographyScript];
  v11 = [v10 addTrack:v8];

  if (v11)
  {
    v12 = [(PXSubjectTrackingView *)self cineController];
    v13 = [v12 cinematographyScript];
    v14 = [v8 trackIdentifier];
    v18 = *&a4->var0;
    var3 = a4->var3;
    v15 = [v13 focusOnTrackIdentifier:v14 atTime:&v18 strong:v5];

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

- (void)_trackedObjectAtPoint:(CGPoint)a3 finishedWithResponse:(id)a4 trackStartTime:(id *)a5 strongTrack:(BOOL)a6
{
  v6 = a6;
  y = a3.y;
  x = a3.x;
  v20 = 0;
  v11 = [a4 result:&v20];
  v12 = v20;
  if (v11)
  {
    v13 = [v11 completedTrack];
    if (v13)
    {
      v14 = v13;
      v18 = *&a5->var0;
      var3 = a5->var3;
      v15 = [(PXSubjectTrackingView *)self addFocusTrack:v13 atTime:&v18 strong:v6];
      if (v15 == 2)
      {
        [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:{@"Tap-to-track error: cinematographyScript failed to focus on new track: %@", v14}];
      }

      else
      {
        if (v15 != 1)
        {
          [(PXSubjectTrackingView *)self _finishedProcessingTrackedObject:v14];
          v18 = *&a5->var0;
          var3 = a5->var3;
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

- (void)_trackedObjectAtPoint:(CGPoint)a3 failedWithError:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Tap-to-track failed with error: %@", &v11, 0xCu);
  }

  v9 = [(PXSubjectTrackingView *)self delegate];
  [v9 objectTrackingFinishedWithSuccess:0];

  v10 = [(PXSubjectTrackingView *)self inProgressTrackingView];
  [v10 removeFromSuperview];

  [(PXSubjectTrackingView *)self setInProgressTrackingView:0];
  [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:0 autoHide:0];
  [(PXSubjectTrackingView *)self _focusOnFixedLocationAtPoint:0 strong:x, y];
}

- (void)_finishedProcessingTrackedObject:(id)a3
{
  v4 = a3;
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Tap-to-track finished with success", v12, 2u);
  }

  v6 = [(PXSubjectTrackingView *)self delegate];
  [v6 objectTrackingFinishedWithSuccess:1];

  v7 = [v4 trackIdentifier];
  v8 = [(PXSubjectTrackingView *)self detectionViewCache];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = [(PXSubjectTrackingView *)self inProgressTrackingView];
    [v11 removeFromSuperview];

    [(PXSubjectTrackingView *)self setInProgressTrackingView:0];
  }

  else
  {
    [(PXSubjectTrackingView *)self setInProgressTrackID:v7];
    [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:1];
  }

  [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:0 autoHide:0];
}

- (void)_trackedObjectWasUpdatedAtTime:(id *)a3 trackedRect:(CGRect)a4 confidence:(float)a5 shouldStop:(BOOL *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v31 = *MEMORY[0x1E69E9840];
  v13 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = *a3;
    v14 = CMTimeCopyDescription(0, &v30);
    LODWORD(v30.var0) = 138412290;
    *(&v30.var0 + 4) = v14;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Tap-to-track progress: t=%@", &v30, 0xCu);
  }

  v15 = [(PXSubjectTrackingView *)self delegate];
  v30 = *a3;
  [v15 trackedObjectWasUpdatedAtTime:&v30 shouldStop:a6];

  v16 = [(PXSubjectTrackingView *)self inProgressTrackingView];

  if (!v16)
  {
    [(PXSubjectTrackingView *)self viewFrameForNormalizedRect:x, y, width, height];
    [PXSubjectTrackingView _reframeWithinVideo:"_reframeWithinVideo:isFixedFocus:fixedFocusCenter:" isFixedFocus:0 fixedFocusCenter:?];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(PXSubjectTrackingView *)self delegate];
    v26 = [v25 newTrackingViewWithFrame:5 initialState:{v18, v20, v22, v24}];
    [(PXSubjectTrackingView *)self setInProgressTrackingView:v26];

    v27 = [(PXSubjectTrackingView *)self inProgressTrackingView];
    [(PXSubjectTrackingView *)self insertSubview:v27 atIndex:0];

    [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:1 autoHide:0];
    v28 = [(PXSubjectTrackingView *)self delegate];
    v29 = [(PXSubjectTrackingView *)self focusStateBadge];
    [v28 setTrackingInProgressTextForFocusStateBadge:v29];
  }
}

- (void)_objectTrackingStartedAtTime:(id *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a3;
    v6 = CMTimeCopyDescription(0, &v8);
    LODWORD(v8.var0) = 138412290;
    *(&v8.var0 + 4) = v6;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Tap-to-track started: t=%@", &v8, 0xCu);
  }

  v7 = [(PXSubjectTrackingView *)self delegate];
  v8 = *a3;
  [v7 objectTrackingStartedAtTime:&v8];
}

- (void)_trackAndFocusObjectAtPoint:(CGPoint)a3 strong:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(PXSubjectTrackingView *)self delegate];
  v9 = [v8 composition];

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
  v15 = [v14 initWithComposition:v9 startTime:&v25 pointToTrack:{v11, v13}];
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
  v22 = a4;
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

- (void)_disparitySampleFinishedWithResponse:(id)a3 time:(id *)a4 rect:(CGRect)a5 strong:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v12 = [a3 result:{&v25, a4}];
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
    v20 = [(PXSubjectTrackingView *)self addFocusTrack:v19 atTime:&v23 strong:v6];
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

- (BOOL)_focusOnFixedLocationAtPoint:(CGPoint)a3 strong:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(PXSubjectTrackingView *)self delegate];
  v9 = [v8 composition];

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
  v17 = [v14 initWithComposition:v9 time:&v27 sampleRect:{v15, v16, 0.1, 0.1}];
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
  v26 = a4;
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

- (BOOL)_focusOnFixedLocationAtDetection:(id)a3 strong:(BOOL)a4
{
  v4 = a4;
  v15 = 0uLL;
  v16 = 0;
  v6 = a3;
  [(PXSubjectTrackingView *)self _currentCinematographyTime];
  v7 = [objc_alloc(MEMORY[0x1E69C4F78]) initWithDetection:v6];

  v13 = v15;
  v14 = v16;
  v8 = [(PXSubjectTrackingView *)self addFocusTrack:v7 atTime:&v13 strong:v4];
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

- (void)_newTrackWasAddedAndFocusedAtTime:(id *)a3
{
  [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:1];
  [(PXSubjectTrackingView *)self _updateFocusStateAnimated:1];
  v5 = [(PXSubjectTrackingView *)self delegate];
  v6 = *a3;
  [v5 trackingWasEditedAtTime:&v6];
}

- (BOOL)focusOnDetection:(id)a3 atTime:(id *)a4 strong:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [v8 groupIdentifier];
  if (PTGroupIDIsValid())
  {
    v9 = [v8 groupIdentifier];

    v12 = *&a4->var0;
    var3 = a4->var3;
    return [(PXSubjectTrackingView *)self _focusOnGroup:v9 atTime:&v12 strong:v5];
  }

  else
  {
    v11 = [v8 trackIdentifier];

    v12 = *&a4->var0;
    var3 = a4->var3;
    return [(PXSubjectTrackingView *)self _focusOnTrackWithID:v11 atTime:&v12 strong:v5];
  }
}

- (BOOL)_focusOnGroup:(int64_t)a3 atTime:(id *)a4 strong:(BOOL)a5
{
  v5 = a5;
  v18 = *MEMORY[0x1E69E9840];
  v9 = [(PXSubjectTrackingView *)self cineController];
  v10 = [v9 cinematographyScript];
  v17 = *a4;
  v11 = [v10 focusOnGroupIdentifier:a3 atTime:&v17 strong:v5];

  v12 = PLPhotoEditGetLog();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"weak";
      if (v5)
      {
        v14 = @"strong";
      }

      LODWORD(v17.var0) = 138412546;
      *(&v17.var0 + 4) = v14;
      LOWORD(v17.var2) = 2048;
      *(&v17.var2 + 2) = a3;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Engine successfully placed %@ focus on group with ID %ld", &v17, 0x16u);
    }

    v13 = [(PXSubjectTrackingView *)self delegate];
    v17 = *a4;
    [v13 trackingWasEditedAtTime:&v17];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = @"weak";
    if (v5)
    {
      v15 = @"strong";
    }

    LODWORD(v17.var0) = 138412546;
    *(&v17.var0 + 4) = v15;
    LOWORD(v17.var2) = 2048;
    *(&v17.var2 + 2) = a3;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Engine failed to place %@ focus on group with ID %ld", &v17, 0x16u);
  }

  return v11;
}

- (BOOL)_focusOnTrackWithID:(int64_t)a3 atTime:(id *)a4 strong:(BOOL)a5
{
  v5 = a5;
  v18 = *MEMORY[0x1E69E9840];
  v9 = [(PXSubjectTrackingView *)self cineController];
  v10 = [v9 cinematographyScript];
  v17 = *a4;
  v11 = [v10 focusOnTrackIdentifier:a3 atTime:&v17 strong:v5];

  v12 = PLPhotoEditGetLog();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = @"weak";
      if (v5)
      {
        v14 = @"strong";
      }

      LODWORD(v17.var0) = 138412546;
      *(&v17.var0 + 4) = v14;
      LOWORD(v17.var2) = 2048;
      *(&v17.var2 + 2) = a3;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "Engine successfully placed %@ focus on track with ID %ld", &v17, 0x16u);
    }

    v13 = [(PXSubjectTrackingView *)self delegate];
    v17 = *a4;
    [v13 trackingWasEditedAtTime:&v17];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = @"weak";
    if (v5)
    {
      v15 = @"strong";
    }

    LODWORD(v17.var0) = 138412546;
    *(&v17.var0 + 4) = v15;
    LOWORD(v17.var2) = 2048;
    *(&v17.var2 + 2) = a3;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Engine failed to place %@ focus on track with ID %ld", &v17, 0x16u);
  }

  return v11;
}

- (BOOL)focusOnTrack:(id)a3 atTime:(id *)a4 strong:(BOOL)a5
{
  v5 = a5;
  v8 = [a3 trackIdentifier];
  v10 = *a4;
  return [(PXSubjectTrackingView *)self _focusOnTrackWithID:v8 atTime:&v10 strong:v5];
}

- (void)handleInteractionBegan
{
  v2 = [(PXSubjectTrackingView *)self delegate];
  [v2 interactionBegan];
}

- (void)handleDoubleSelectOnPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

- (void)handleSingleSelectOnPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXSubjectTrackingView *)self cineController];
  v7 = [v6 cinematographyScript];

  v8 = [(PXSubjectTrackingView *)self _hitDetectionAtPoint:x, y];
  v9 = v8;
  if (v8)
  {
    [v8 time];
    v10 = [v7 primaryDecisionAtTime:&v24];
    [v10 groupIdentifier];
    v11 = PTGroupIDIsValid();
    [v9 groupIdentifier];
    v12 = PTGroupIDIsValid();
    v13 = 0;
    if (v11 && v12)
    {
      v14 = [v10 groupIdentifier];
      v13 = v14 == [v9 groupIdentifier];
    }

    v15 = [v10 trackIdentifier];
    v16 = [v9 trackIdentifier];
    if (v13 || v15 == v16)
    {
      v17 = [v10 isStrongDecision];
      v24 = 0uLL;
      v25 = 0;
      if (v10)
      {
        [v10 time];
      }

      v22 = v24;
      v23 = v25;
      v18 = [v7 frameNearestTime:&v22];
      v19 = [v18 focusDetection];
      v20 = [v19 trackIdentifier];
      v21 = v20 == [v9 trackIdentifier] || v13;
      if (v21 == 1)
      {
        [(PXSubjectTrackingView *)self _currentCinematographyTime];
        [(PXSubjectTrackingView *)self focusOnDetection:v9 atTime:&v22 strong:v17 ^ 1u];
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

- (id)_hitDetectionAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v28 = *MEMORY[0x1E69E9840];
  v6 = [(PXSubjectTrackingView *)self cinematographyFrame];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v6 allDetections];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v7);
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

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGPoint)normalizedPointForViewPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXSubjectTrackingView *)self layoutDelegate];

  if (v6)
  {
    v7 = [(PXSubjectTrackingView *)self layoutDelegate];
    [v7 normalizedPoint:self fromView:{x, y}];
  }

  else
  {
    v7 = [(PXSubjectTrackingView *)self mediaView];
    [v7 convertPoint:v7 toNormalizedYDownSourceSpaceFromView:{x, y}];
  }

  v10 = v8;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (CGRect)_reframeWithinVideo:(CGRect)a3 isFixedFocus:(BOOL)a4 fixedFocusCenter:(CGPoint)a5
{
  v5 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    goto LABEL_14;
  }

  rect = x;
  v11 = [(PXSubjectTrackingView *)self layoutDelegate];

  if (v11)
  {
    v12 = [(PXSubjectTrackingView *)self layoutDelegate];
    [v12 videoFrame];
    v55 = v13;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v20 = [(PXSubjectTrackingView *)self mediaView];
    [v20 imageFrame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v12 = [(PXSubjectTrackingView *)self mediaView];
    v29 = [v12 superview];
    [(PXSubjectTrackingView *)self convertRect:v29 fromView:v22, v24, v26, v28];
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
  v36 = v5 ? a5.y : MidY;
  v37 = v5 ? a5.x : MidX;
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

  if (v5)
  {
    v40 = a5.x + -37.5;
    y = a5.y + -37.5;
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
      if (v5)
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

  if (!v5)
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

- (CGRect)frameForDetection:(id)a3
{
  v4 = a3;
  [v4 rect];
  [(PXSubjectTrackingView *)self viewFrameForNormalizedRect:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PXSubjectTrackingView *)self cineController];
  v14 = [v13 cinematographyScript];
  v15 = [v14 trackForIdentifier:{objc_msgSend(v4, "trackIdentifier")}];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v17 = 0.0;
  v18 = 0.0;
  if (isKindOfClass)
  {
    [v4 rect];
    MidX = CGRectGetMidX(v34);
    [v4 rect];
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

- (CGPoint)viewPointForNormalizedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PXSubjectTrackingView *)self layoutDelegate];

  if (v6)
  {
    v7 = [(PXSubjectTrackingView *)self layoutDelegate];
    [v7 viewPointForNormalizedPoint:{x, y}];
  }

  else
  {
    [(NUMediaView *)self->_mediaView _masterSizeWithoutGeometry];
    [PXSubjectTrackingView denormalizePoint:1 masterSize:x flipYCoordinate:y, v10, v11];
    v13 = v12;
    v15 = v14;
    v7 = [(PXSubjectTrackingView *)self mediaView];
    [v7 convertPoint:@"/masterSpace" fromSpace:self toView:{v13, v15}];
  }

  v16 = v8;
  v17 = v9;

  v18 = v16;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGRect)viewFrameForNormalizedRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PXSubjectTrackingView *)self layoutDelegate];

  if (!v8)
  {
    PXRectFlippedVertically();
  }

  v9 = [(PXSubjectTrackingView *)self layoutDelegate];
  [v9 viewRectForNormalizedRect:{x, y, width, height}];
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
  v5 = [(PXSubjectTrackingView *)self cinematographyFrame];

  if (v5)
  {
    v6 = [(PXSubjectTrackingView *)self cinematographyFrame];
    v7 = v6;
    if (v6)
    {
      [v6 time];
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
    v8 = [(PXSubjectTrackingView *)self mediaView];
    v9 = [v8 player];
    v10 = v9;
    if (v9)
    {
      [v9 currentTime];
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
    v12 = [(PXSubjectTrackingView *)self mediaView];
    v13 = [v12 player];
    v14 = v13;
    if (v13)
    {
      [v13 currentSeekTime];
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

    v15 = [(PXSubjectTrackingView *)self delegate];
    v7 = v15;
    if (v15)
    {
      v17 = *&retstr->var0;
      var3 = retstr->var3;
      [v15 unadjustedTimeForPlayerTime:&v17];
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

- (void)setFocusStateBadgeVisible:(BOOL)a3 autoHide:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3 || ![(PXSubjectTrackingView *)self badgeVisibleAndWillAutoClose])
  {
    v7 = [(PXSubjectTrackingView *)self mediaView];
    v8 = [v7 player];
    [v8 playbackRate];
    v10 = v9;

    if (v5 && v10 == 0.0)
    {
      v11 = [(PXSubjectTrackingView *)self focusStateBadge];

      if (!v11)
      {
        v12 = [(PXSubjectTrackingView *)self delegate];
        v13 = [v12 newFocusStatusBadge];
        [(PXSubjectTrackingView *)self setFocusStateBadge:v13];

        v14 = [(PXSubjectTrackingView *)self focusStateBadge];
        [v14 setAlpha:0.0];

        v15 = [(PXSubjectTrackingView *)self focusStateBadge];
        [(PXSubjectTrackingView *)self addSubview:v15];
      }

      v16 = [(PXSubjectTrackingView *)self focusStateBadge];
      [(PXSubjectTrackingView *)self bringSubviewToFront:v16];

      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __60__PXSubjectTrackingView_setFocusStateBadgeVisible_autoHide___block_invoke;
      v30[3] = &unk_1E774C648;
      v30[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v30 animations:0.3];
      v17 = [(PXSubjectTrackingView *)self hideFocusStateBadgeTimer];
      [v17 invalidate];

      if (v4)
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
      v20 = [(PXSubjectTrackingView *)self hideFocusStateBadgeTimer];
      v21 = [v20 isValid];

      if (v21)
      {
        v25 = [(PXSubjectTrackingView *)self hideFocusStateBadgeTimer];
        [v25 fire];
      }

      else
      {
        v22 = [(PXSubjectTrackingView *)self focusStateBadge];
        [v22 alpha];
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

- (void)_setPrimaryDetection:(id)a3 focusState:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [(PXSubjectTrackingView *)self setFocusState:a4 detection:v8];
  v9 = [v8 trackIdentifier];

  v17 = [(PXSubjectTrackingView *)self primaryKey];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  [(PXSubjectTrackingView *)self setPrimaryKey:v10];
  if ([v17 integerValue] != v9)
  {
    [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:1];
    v11 = [(PXSubjectTrackingView *)self detectionViewCache];
    v12 = [v11 objectForKey:v17];

    if (v12)
    {
      v13 = [(PXSubjectTrackingView *)self delegate];
      [v13 subjectTrackingStateDidChange:0 forView:v12 animated:v5];
    }
  }

  v14 = [(PXSubjectTrackingView *)self detectionViewCache];
  v15 = [v14 objectForKey:v10];

  v16 = [(PXSubjectTrackingView *)self delegate];
  [v16 subjectTrackingStateDidChange:a4 forView:v15 animated:v5];
}

- (void)_updateFocusStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXSubjectTrackingView *)self cinematographyFrame];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 allDetections];
    v8 = [v7 count];

    if (v8)
    {
      v23 = 0uLL;
      v24 = 0;
      [v6 time];
      v9 = [(PXSubjectTrackingView *)self cineController];
      v10 = [v9 cinematographyScript];

      v21 = v23;
      v22 = v24;
      v11 = [v10 primaryDecisionAtTime:&v21];
      v12 = [v10 trackForIdentifier:{objc_msgSend(v11, "trackIdentifier")}];
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
        v14 = [v13 groupIdentifier];
        if (PTGroupIDIsValid())
        {
          v15 = [v6 bestDetectionForGroupIdentifier:v14];

          v13 = v15;
        }

        v16 = [v12 isDiscrete];
        v17 = [v11 isStrongDecision];
        v18 = 1;
        if (v17)
        {
          v18 = 2;
        }

        v19 = 3;
        if (v17)
        {
          v19 = 4;
        }

        if (v16)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        [(PXSubjectTrackingView *)self _setPrimaryDetection:v13 focusState:v20 animated:v3];
      }
    }
  }
}

- (void)_updateDetectionViewCache
{
  v82 = *MEMORY[0x1E69E9840];
  v3 = [(PXSubjectTrackingView *)self cinematographyFrame];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allDetections];
    v6 = [v5 count];

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
        v10 = [(NSDictionary *)v9 allValues];
        v11 = [v10 countByEnumeratingWithState:&v71 objects:v81 count:16];
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
                objc_enumerationMutation(v10);
              }

              [*(*(&v71 + 1) + 8 * i) setHidden:1];
            }

            v12 = [v10 countByEnumeratingWithState:&v71 objects:v81 count:16];
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

      v57 = self;
      v16 = [v4 focusDetection];
      v17 = [v4 allDetections];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v59 = v17;
      v60 = v16;
      v62 = [v17 countByEnumeratingWithState:&v67 objects:v80 count:16];
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
              objc_enumerationMutation(v17);
            }

            v19 = *(*(&v67 + 1) + 8 * v18);
            if ([v19 detectionType] != 100)
            {
              v20 = [v19 trackIdentifier];
              v21 = [v16 trackIdentifier];
              v22 = [v19 groupIdentifier];
              if (PTGroupIDIsValid())
              {
                v23 = [v4 bestDetectionForGroupIdentifier:v22];
                v24 = [v19 trackIdentifier];
                v25 = v4;
                v26 = [v23 trackIdentifier];
                v27 = [v60 groupIdentifier];
                v28 = v24 == v26;
                v4 = v25;
                v16 = v60;
                v29 = v28;
                v30 = v28 && v20 == v21;
                v15 = v58;
                v31 = v22 == v27 ? v30 : v29;

                v17 = v59;
              }

              else
              {
                v31 = 0;
              }

              if (v20 == v21 || v31)
              {
                v33 = [v19 trackIdentifier];
                v34 = [MEMORY[0x1E696AD98] numberWithInteger:v33];
                v35 = [(NSDictionary *)v15 objectForKey:v34];
                if (!v35)
                {
                  [(PXSubjectTrackingView *)v57 frameForDetection:v19];
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
                    v42 = [(PXSubjectTrackingView *)v57 inProgressTrackingView];
                    if (v42 && (v43 = v42, v44 = [(PXSubjectTrackingView *)v57 inProgressTrackID], v43, v33 == v44))
                    {
                      v45 = [(PXSubjectTrackingView *)v57 inProgressTrackingView];
                      [(NSDictionary *)v15 setObject:v45 forKey:v34];
                      [(PXSubjectTrackingView *)v57 setInProgressTrackingView:0];
                      [(PXSubjectTrackingView *)v57 setInProgressTrackID:0x7FFFFFFFFFFFFFFFLL];

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

                      v47 = [(PXSubjectTrackingView *)v57 delegate];
                      v35 = [v47 newTrackingViewWithFrame:0 initialState:{x, y, width, height}];

                      if (v35)
                      {
                        [(PXSubjectTrackingView *)v57 insertSubview:v35 atIndex:0];
                        [(NSDictionary *)v15 setObject:v35 forKey:v34];
                      }
                    }

                    v17 = v59;
                  }
                }

                [v35 setHidden:0];
              }
            }

            ++v18;
          }

          while (v62 != v18);
          v48 = [v17 countByEnumeratingWithState:&v67 objects:v80 count:16];
          v62 = v48;
        }

        while (v48);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v49 = [(NSDictionary *)v15 allKeys];
      v50 = [v49 countByEnumeratingWithState:&v63 objects:v75 count:16];
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
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v63 + 1) + 8 * j);
            v55 = [(NSDictionary *)v15 objectForKey:v54];
            if ([v55 isHidden])
            {
              [v55 removeFromSuperview];
              [(NSDictionary *)v15 removeObjectForKey:v54];
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v63 objects:v75 count:16];
        }

        while (v51);
      }

      [MEMORY[0x1E6979518] commit];
      v56 = v57->_detectionViewCache;
      v57->_detectionViewCache = v15;
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

- (void)setCinematographyFrame:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = v7;
  if (self->_needsUpdateFrame || ([v7 isEqual:self->_cinematographyFrame] & 1) == 0)
  {
    self->_needsUpdateFrame = 0;
    objc_storeStrong(&self->_cinematographyFrame, a3);
    [(PXSubjectTrackingView *)self setNeedsUpdateViewCache:1];
    if (v4)
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

- (void)_updateCinematographyFrameWithTime:(id *)a3
{
  v5 = [(PXSubjectTrackingView *)self cineController];
  v6 = [v5 cinematographyScript];
  v8 = *a3;
  v7 = [v6 frameNearestTime:&v8];

  [(PXSubjectTrackingView *)self setCinematographyFrame:v7 animate:0];
}

- (void)_playbackTimeDidUpdate
{
  if (self->_viewEnabled)
  {
    v24 = v2;
    v25 = v3;
    v5 = [(PXSubjectTrackingView *)self mediaView];
    v6 = [v5 player];
    v7 = [v6 playbackState];

    if ((v7 - 4) >= 0xFFFFFFFFFFFFFFFELL)
    {
      v22 = 0uLL;
      v23 = 0;
      v8 = [(PXSubjectTrackingView *)self mediaView];
      v9 = [v8 player];
      v10 = v9;
      if (v9)
      {
        [v9 currentTime];
      }

      else
      {
        v22 = 0uLL;
        v23 = 0;
      }

      v20 = 0uLL;
      v21 = 0;
      v11 = [(PXSubjectTrackingView *)self mediaView];
      v12 = [v11 player];
      v13 = v12;
      if (v12)
      {
        [v12 currentSeekTime];
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

      v14 = [(PXSubjectTrackingView *)self delegate];
      v15 = v14;
      if (v14)
      {
        v16 = v22;
        v17 = v23;
        [v14 unadjustedTimeForPlayerTime:&v16];
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

  v3 = [(PXCinematicEditController *)self->_cineController cinematographyScript];
  [v3 setChangesDelegate:self];

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

- (void)renderDidChange:(BOOL)a3
{
  v3 = a3;
  [(PXSubjectTrackingView *)self setNeedsLayout];
  if (v3)
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

- (void)setViewEnabled:(BOOL)a3
{
  if (self->_viewEnabled != (self->_viewCanBeEnabled && a3))
  {
    if (self->_viewCanBeEnabled && a3)
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

- (double)_smoothenFromValue:(double)a3 toNewValue:(double)a4 forTime:(double)a5 tolerance:(double)a6
{
  v7 = a3;
  v8 = a4 - a3;
  if (v8 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 <= a6)
  {
    return v7;
  }

  [(PXSubjectTrackingView *)self lastLayoutTime];
  if (v10 >= a5 || v10 + 0.1 <= a5)
  {
    return a4;
  }

  v13 = (v10 * -1000.0 + a5 * 1000.0) / -100.0 + 1.0;
  return (1.0 - v13) * a4 + v13 * v7;
}

- (BOOL)_isValidTrackingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsNull(a3))
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
  v3 = [(PXSubjectTrackingView *)self delegate];
  v4 = [(PXSubjectTrackingView *)self focusStateBadge];
  [v3 rectForFocusStateBadge:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PXSubjectTrackingView *)self focusStateBadge];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(PXSubjectTrackingView *)self cinematographyFrame];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 allDetections];
    v17 = [v16 count];

    if (v17)
    {
      memset(&v70, 0, sizeof(v70));
      v18 = [(PXSubjectTrackingView *)self mediaView];
      v19 = [v18 player];
      v20 = v19;
      if (v19)
      {
        [v19 currentTime];
      }

      else
      {
        memset(&v70, 0, sizeof(v70));
      }

      time = v70;
      v60 = (v70.flags & 0x1D) == 1;
      v21 = [(PXSubjectTrackingView *)self detectionViewCache];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v22 = [v21 allKeys];
      v23 = [v22 countByEnumeratingWithState:&v66 objects:v72 count:16];
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
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v66 + 1) + 8 * v26);
            v28 = [v21 objectForKey:v27];
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
                v46 = v22;
                v47 = v21;
                v48 = v15;
                v49 = [(PXSubjectTrackingView *)self mediaView];
                v50 = [v49 player];
                v51 = [v50 playbackState] == 3 && v60;

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
                v21 = v47;
                v22 = v46;
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
          v24 = [v22 countByEnumeratingWithState:&v66 objects:v72 count:16];
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

- (void)setFocusState:(int64_t)a3 detection:(id)a4
{
  v6 = a4;
  if ((a3 - 5) > 0xFFFFFFFFFFFFFFFDLL || self->_focusState != a3)
  {
    v11 = v6;
    self->_focusState = a3;
    v7 = [(PXSubjectTrackingView *)self undoManager];
    if (!-[PXSubjectTrackingView badgeVisibleAndWillAutoClose](self, "badgeVisibleAndWillAutoClose") && ([v7 isUndoing] & 1) == 0 && (objc_msgSend(v7, "isRedoing") & 1) == 0)
    {
      if (a3 > 3 || a3 == 2)
      {
        [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:1 autoHide:1];
        v8 = [(PXSubjectTrackingView *)self delegate];
        v9 = [(PXSubjectTrackingView *)self focusStateBadge];
        [v11 focusDistance];
        [v8 subjectFocusStateDidChange:a3 forBadge:v9 focusedDisparity:v10];

        [(PXSubjectTrackingView *)self setNeedsLayout];
      }

      else
      {
        [(PXSubjectTrackingView *)self setFocusStateBadgeVisible:0 autoHide:0];
      }
    }

    v6 = v11;
  }
}

- (PXSubjectTrackingView)initWithMediaView:(id)a3 cineController:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXSubjectTrackingView.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"PXSubjectTrackingView.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"cineController != nil"}];

LABEL_3:
  v23.receiver = self;
  v23.super_class = PXSubjectTrackingView;
  v11 = [(PXSubjectTrackingView *)&v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaView, a3);
    objc_storeStrong(&v12->_cineController, a4);
    v13 = [(PXCinematicEditController *)v12->_cineController cinematographyScript];
    [v13 setChangesDelegate:v12];

    v12->_focusState = 0;
    v12->_viewEnabled = 0;
    v12->_viewCanBeEnabled = 1;
    objc_initWeak(&location, v12);
    v14 = [v8 player];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__PXSubjectTrackingView_initWithMediaView_cineController___block_invoke;
    v20[3] = &unk_1E77480F8;
    objc_copyWeak(&v21, &location);
    v15 = [v14 addPlaybackTimeObserver:v20];
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

+ (CGPoint)denormalizePoint:(CGPoint)a3 masterSize:(CGSize)a4 flipYCoordinate:(BOOL)a5
{
  v5 = a3.x * a4.width;
  v6 = a3.y * a4.height;
  if (a5)
  {
    v6 = a4.height - v6;
  }

  result.y = v6;
  result.x = v5;
  return result;
}

@end