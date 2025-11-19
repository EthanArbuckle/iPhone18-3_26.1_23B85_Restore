@interface PUVideoEditOverlayViewController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)unadjustedTimeForPlayerTime:(SEL)a3;
- (BOOL)isHidden;
- (CALayer)safeAreaMask;
- (CGRect)rectForFocusStateBadge:(id)a3;
- (PUVideoEditOverlayViewController)initWithMediaView:(id)a3 cineController:(id)a4;
- (PUVideoEditOverlayViewControllerDelegate)overlayControllerDelegate;
- (id)composition;
- (id)compositionController;
- (id)localizedStringForCinematicTrackingBadgeMessage:(int64_t)a3;
- (id)newFocusStatusBadge;
- (id)newTrackingViewWithFrame:(CGRect)a3 initialState:(int64_t)a4;
- (void)_setState:(int64_t)a3 forView:(id)a4 animated:(BOOL)a5;
- (void)enableUIForCinematographyScriptLoad:(BOOL)a3;
- (void)frameTimeDidChange;
- (void)interactionBegan;
- (void)objectTrackingFinishedWithSuccess:(BOOL)a3;
- (void)objectTrackingStartedAtTime:(id *)a3;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setTrackingInProgressTextForFocusStateBadge:(id)a3;
- (void)subjectFocusStateDidChange:(int64_t)a3 forBadge:(id)a4 focusedDisparity:(double)a5;
- (void)trackedObjectWasUpdatedAtTime:(id *)a3 shouldStop:(BOOL *)a4;
- (void)trackingWasEdited;
- (void)trackingWasEditedAtTime:(id *)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PUVideoEditOverlayViewController

- (PUVideoEditOverlayViewControllerDelegate)overlayControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayControllerDelegate);

  return WeakRetained;
}

- (id)localizedStringForCinematicTrackingBadgeMessage:(int64_t)a3
{
  v3 = @"PHOTOEDIT_CINEMATIC_TRACKING_MESSAGE_ON";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return PULocalizedString(v3);
  }

  else
  {
    return PULocalizedString(@"PHOTOEDIT_CINEMATIC_TRACKING_MESSAGE_OFF");
  }
}

- (void)interactionBegan
{
  v2 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  [v2 interactionBegan];
}

- (void)objectTrackingFinishedWithSuccess:(BOOL)a3
{
  v3 = a3;
  [(PXUISubjectTrackingView *)self->_trackingView setViewEnabled:1];
  v5 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  [v5 objectTrackingFinishedWithSuccess:v3];
}

- (void)trackedObjectWasUpdatedAtTime:(id *)a3 shouldStop:(BOOL *)a4
{
  v6 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v7 = *a3;
  [v6 trackedObjectWasUpdatedAtTime:&v7 shouldStop:a4];
}

- (void)objectTrackingStartedAtTime:(id *)a3
{
  [(PXUISubjectTrackingView *)self->_trackingView setViewEnabled:0];
  v5 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v6 = *a3;
  [v5 objectTrackingStartedAtTime:&v6];
}

- (void)subjectFocusStateDidChange:(int64_t)a3 forBadge:(id)a4 focusedDisparity:(double)a5
{
  v14 = a4;
  v7 = @"UNKNOWN";
  if (a3 == 2)
  {
    v7 = @"PHOTOEDIT_CINEMATIC_FOCUS_STATE_HARD";
  }

  if (a3 == 4)
  {
    v8 = @"PHOTOEDIT_CINEMATIC_FOCUS_STATE_FIXED";
  }

  else
  {
    v8 = v7;
  }

  v9 = PULocalizedString(v8);
  if ((a3 - 3) <= 1 && a5 != 0.0)
  {
    v10 = PULocalizedString(@"PHOTOEDIT_CINEMATIC_FOCUS_STATE_FIXED_DISTANCE_FMT");
    v13 = 1.0 / a5;
    v12 = v9;
    v11 = PUStringWithValidatedFormat();

    v9 = v11;
  }

  [v14 _setText:{v9, v12, *&v13}];
}

- (void)_setState:(int64_t)a3 forView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3 - 3;
  v7 = 3;
  v8 = 2;
  if (a3 != 5)
  {
    v8 = 0;
  }

  v9 = v6 >= 2;
  v10 = v6 >= 2 && a3 == 5;
  if (v9)
  {
    v7 = v8;
  }

  v11 = 2;
  if (a3 != 1)
  {
    v11 = a3 == 2;
  }

  v12 = a3 > 2 && v10;
  if (a3 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = a4;
  [v14 setShape:v13 animated:v5];
  [v14 setIsPulsing:v12];
}

- (void)setTrackingInProgressTextForFocusStateBadge:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PUVideoEditOverlayViewController.m" lineNumber:243 description:@"Unexpected focus state badge view class"];
    }

    v6 = PULocalizedString(@"PHOTOEDIT_CINEMATIC_TRACKING_IN_PROGRESS");
    [v5 _setText:v6];
  }

  else
  {
    v6 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "PUVideoEditOverlayViewController setTrackingInProgressTextForFocusStateBadge called with a nil focusStateBadge", v8, 2u);
    }
  }
}

- (CGRect)rectForFocusStateBadge:(id)a3
{
  [a3 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = v4;
  v7 = v6;
  v8 = [(PUVideoEditOverlayViewController *)self mediaView];
  [v8 frame];
  v10 = (v9 - v5) * 0.5;
  [v8 imageFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(PUVideoEditOverlayViewController *)self view];
  [v8 convertRect:v19 toView:{v12, v14, v16, v18}];
  v21 = v20 + 9.0;

  v22 = [(PUVideoEditOverlayViewController *)self view];
  [v22 safeAreaInsets];
  v24 = v23 + 20.0;

  if (v21 < v24)
  {
    v21 = v24;
  }

  v25 = v10;
  v26 = v21;
  v27 = v5;
  v28 = v7;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)newFocusStatusBadge
{
  v2 = objc_alloc(MEMORY[0x1E6993830]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  v5 = [v4 colorWithAlphaComponent:0.8];
  [v3 _setFillColor:v5];

  v6 = [MEMORY[0x1E69DC888] whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.8];
  [v3 _setContentColor:v7];

  return v3;
}

- (id)newTrackingViewWithFrame:(CGRect)a3 initialState:(int64_t)a4
{
  v6 = [[PUCinematicSubjectIndicator alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PUVideoEditOverlayViewController *)self _setState:a4 forView:v6 animated:0];
  return v6;
}

- (id)composition
{
  v2 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v3 = [v2 compositionController];
  v4 = [v3 composition];

  return v4;
}

- (id)compositionController
{
  v2 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v3 = [v2 compositionController];

  return v3;
}

- (void)trackingWasEditedAtTime:(id *)a3
{
  v4 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v5 = *a3;
  [v4 cinematographyWasEditedAtTime:&v5];
}

- (void)trackingWasEdited
{
  v2 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v3 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  [v2 cinematographyWasEditedAtTime:&v3];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)unadjustedTimeForPlayerTime:(SEL)a3
{
  *retstr = *a4;
  v7 = [(PUVideoEditOverlayViewController *)self compositionController];
  v8 = [v7 trimAdjustmentController];

  if (v8)
  {
    v9 = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
    v10 = [v9 hasTrimmedVideo];

    if (v10)
    {
      [v8 startTime];
      v12 = *a4;
      CMTimeAdd(retstr, &v12, &rhs);
    }
  }

  return result;
}

- (void)enableUIForCinematographyScriptLoad:(BOOL)a3
{
  v3 = a3;
  [(PUVideoEditOverlayViewController *)self setDisabledForCinematographyScriptLoad:!a3];
  [(PXUISubjectTrackingView *)self->_trackingView enableUIForCinematographyScriptLoad:v3];
  trackingView = self->_trackingView;

  [(PXUISubjectTrackingView *)trackingView setViewEnabled:v3];
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PUVideoEditOverlayViewController *)self view];
  v8 = [v7 isHidden];
  v9 = [(PUVideoEditOverlayViewController *)self disabledForCinematographyScriptLoad]| v5;
  if (v8 != v9)
  {
    if (v4)
    {
      [v7 setHidden:0];
      v10 = 1.0;
      if (v8)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      [v7 setAlpha:v11];
      if (v9)
      {
        v10 = 0.0;
      }

      v12 = MEMORY[0x1E69DD250];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__PUVideoEditOverlayViewController_setHidden_animated___block_invoke;
      v19[3] = &unk_1E7B7FF70;
      v20 = v7;
      v21 = v10;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __55__PUVideoEditOverlayViewController_setHidden_animated___block_invoke_2;
      v16 = &unk_1E7B7DC88;
      v17 = v20;
      v18 = v9;
      [v12 animateWithDuration:v19 animations:&v13 completion:0.2];
    }

    else
    {
      [v7 setAlpha:1.0];
      [v7 setHidden:v9];
    }
  }

  [(PXUISubjectTrackingView *)self->_trackingView setViewEnabled:v9 ^ 1, v13, v14, v15, v16];
}

uint64_t __55__PUVideoEditOverlayViewController_setHidden_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);

  return [v3 setHidden:v2];
}

- (BOOL)isHidden
{
  v2 = [(PUVideoEditOverlayViewController *)self view];
  v3 = [v2 isHidden];

  return v3;
}

- (void)frameTimeDidChange
{
  [(PXUISubjectTrackingView *)self->_trackingView setNeedsUpdateFrameTime];
  trackingView = self->_trackingView;

  [(PXUISubjectTrackingView *)trackingView scriptDidUpdate];
}

- (CALayer)safeAreaMask
{
  v29[6] = *MEMORY[0x1E69E9840];
  safeAreaMask = self->_safeAreaMask;
  if (!safeAreaMask)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E69DC888] clearColor];
    v27 = v4;
    -[CALayer setBackgroundColor:](v4, "setBackgroundColor:", [v5 CGColor]);

    v6 = objc_opt_new();
    v7 = +[PUPhotoEditProtoSettings sharedInstance];
    v8 = [v7 debugTrackerMask];

    if (v8)
    {
      v9 = [MEMORY[0x1E69DC888] redColor];
      v29[0] = [v9 CGColor];
      v10 = [MEMORY[0x1E69DC888] redColor];
      v29[1] = [v10 CGColor];
      v11 = [MEMORY[0x1E69DC888] greenColor];
      v29[2] = [v11 CGColor];
      v12 = [MEMORY[0x1E69DC888] greenColor];
      v29[3] = [v12 CGColor];
      v13 = [MEMORY[0x1E69DC888] redColor];
      v29[4] = [v13 CGColor];
      v14 = [MEMORY[0x1E69DC888] redColor];
      v29[5] = [v14 CGColor];
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
      [v6 setColors:v15];

      LODWORD(v16) = 0.5;
      v17 = v27;
      [(CALayer *)v27 setOpacity:v16];
    }

    else
    {
      v18 = [MEMORY[0x1E69DC888] clearColor];
      v28[0] = [v18 CGColor];
      v19 = [MEMORY[0x1E69DC888] clearColor];
      v28[1] = [v19 CGColor];
      v20 = [MEMORY[0x1E69DC888] whiteColor];
      v28[2] = [v20 CGColor];
      v21 = [MEMORY[0x1E69DC888] whiteColor];
      v28[3] = [v21 CGColor];
      v22 = [MEMORY[0x1E69DC888] clearColor];
      v28[4] = [v22 CGColor];
      v23 = [MEMORY[0x1E69DC888] clearColor];
      v28[5] = [v23 CGColor];
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:6];
      [v6 setColors:v24];

      v17 = v27;
    }

    [(CALayer *)v17 addSublayer:v6];
    v25 = self->_safeAreaMask;
    self->_safeAreaMask = v17;

    safeAreaMask = self->_safeAreaMask;
  }

  return safeAreaMask;
}

- (void)viewDidLayoutSubviews
{
  v26[6] = *MEMORY[0x1E69E9840];
  v3 = [(PUVideoEditOverlayViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;

  v6 = [(PUVideoEditOverlayViewController *)self safeAreaMask];
  v7 = [v6 sublayers];
  v8 = [v7 firstObject];

  v9 = [(PUVideoEditOverlayViewController *)self view];
  [v9 bounds];
  [v6 setFrame:?];

  [v6 bounds];
  [v8 setFrame:?];
  v10 = [(PUVideoEditOverlayViewController *)self view];
  [v10 frame];
  v12 = v11;

  v13 = v5 / v12;
  v26[0] = &unk_1F2B7F388;
  v14 = 20.0 / v12;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  v26[1] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v13 + v14];
  v26[2] = v16;
  v17 = 1.0 - v13;
  v18 = [MEMORY[0x1E696AD98] numberWithDouble:v17 - v14];
  v26[3] = v18;
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
  v26[4] = v19;
  v26[5] = &unk_1F2B7F398;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:6];
  [v8 setLocations:v20];

  v21 = [(PXUISubjectTrackingView *)self->_trackingView layer];
  [v21 setMask:v6];

  v22 = +[PUPhotoEditProtoSettings sharedInstance];
  LODWORD(v16) = [v22 debugTrackerMask];

  if (v16)
  {
    v23 = [(PUVideoEditOverlayViewController *)self view];
    v24 = [v23 layer];
    v25 = [(PUVideoEditOverlayViewController *)self safeAreaMask];
    [v24 addSublayer:v25];
  }
}

- (PUVideoEditOverlayViewController)initWithMediaView:(id)a3 cineController:(id)a4
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
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUVideoEditOverlayViewController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PUVideoEditOverlayViewController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"cineController != nil"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = PUVideoEditOverlayViewController;
  v11 = [(PUVideoEditOverlayViewController *)&v17 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69C3C30]) initWithMediaView:v8 cineController:v10];
    trackingView = v11->_trackingView;
    v11->_trackingView = v12;

    [(PXUISubjectTrackingView *)v11->_trackingView setDelegate:v11];
    objc_storeStrong(&v11->_mediaView, a3);
  }

  return v11;
}

@end