@interface PUVideoEditOverlayViewController
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)unadjustedTimeForPlayerTime:(SEL)time;
- (BOOL)isHidden;
- (CALayer)safeAreaMask;
- (CGRect)rectForFocusStateBadge:(id)badge;
- (PUVideoEditOverlayViewController)initWithMediaView:(id)view cineController:(id)controller;
- (PUVideoEditOverlayViewControllerDelegate)overlayControllerDelegate;
- (id)composition;
- (id)compositionController;
- (id)localizedStringForCinematicTrackingBadgeMessage:(int64_t)message;
- (id)newFocusStatusBadge;
- (id)newTrackingViewWithFrame:(CGRect)frame initialState:(int64_t)state;
- (void)_setState:(int64_t)state forView:(id)view animated:(BOOL)animated;
- (void)enableUIForCinematographyScriptLoad:(BOOL)load;
- (void)frameTimeDidChange;
- (void)interactionBegan;
- (void)objectTrackingFinishedWithSuccess:(BOOL)success;
- (void)objectTrackingStartedAtTime:(id *)time;
- (void)setHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setTrackingInProgressTextForFocusStateBadge:(id)badge;
- (void)subjectFocusStateDidChange:(int64_t)change forBadge:(id)badge focusedDisparity:(double)disparity;
- (void)trackedObjectWasUpdatedAtTime:(id *)time shouldStop:(BOOL *)stop;
- (void)trackingWasEdited;
- (void)trackingWasEditedAtTime:(id *)time;
- (void)viewDidLayoutSubviews;
@end

@implementation PUVideoEditOverlayViewController

- (PUVideoEditOverlayViewControllerDelegate)overlayControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayControllerDelegate);

  return WeakRetained;
}

- (id)localizedStringForCinematicTrackingBadgeMessage:(int64_t)message
{
  v3 = @"PHOTOEDIT_CINEMATIC_TRACKING_MESSAGE_ON";
  if (message != 1)
  {
    v3 = 0;
  }

  if (message)
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
  overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  [overlayControllerDelegate interactionBegan];
}

- (void)objectTrackingFinishedWithSuccess:(BOOL)success
{
  successCopy = success;
  [(PXUISubjectTrackingView *)self->_trackingView setViewEnabled:1];
  overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  [overlayControllerDelegate objectTrackingFinishedWithSuccess:successCopy];
}

- (void)trackedObjectWasUpdatedAtTime:(id *)time shouldStop:(BOOL *)stop
{
  overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v7 = *time;
  [overlayControllerDelegate trackedObjectWasUpdatedAtTime:&v7 shouldStop:stop];
}

- (void)objectTrackingStartedAtTime:(id *)time
{
  [(PXUISubjectTrackingView *)self->_trackingView setViewEnabled:0];
  overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v6 = *time;
  [overlayControllerDelegate objectTrackingStartedAtTime:&v6];
}

- (void)subjectFocusStateDidChange:(int64_t)change forBadge:(id)badge focusedDisparity:(double)disparity
{
  badgeCopy = badge;
  v7 = @"UNKNOWN";
  if (change == 2)
  {
    v7 = @"PHOTOEDIT_CINEMATIC_FOCUS_STATE_HARD";
  }

  if (change == 4)
  {
    v8 = @"PHOTOEDIT_CINEMATIC_FOCUS_STATE_FIXED";
  }

  else
  {
    v8 = v7;
  }

  v9 = PULocalizedString(v8);
  if ((change - 3) <= 1 && disparity != 0.0)
  {
    v10 = PULocalizedString(@"PHOTOEDIT_CINEMATIC_FOCUS_STATE_FIXED_DISTANCE_FMT");
    v13 = 1.0 / disparity;
    v12 = v9;
    v11 = PUStringWithValidatedFormat();

    v9 = v11;
  }

  [badgeCopy _setText:{v9, v12, *&v13}];
}

- (void)_setState:(int64_t)state forView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = state - 3;
  v7 = 3;
  v8 = 2;
  if (state != 5)
  {
    v8 = 0;
  }

  v9 = v6 >= 2;
  v10 = v6 >= 2 && state == 5;
  if (v9)
  {
    v7 = v8;
  }

  v11 = 2;
  if (state != 1)
  {
    v11 = state == 2;
  }

  v12 = state > 2 && v10;
  if (state <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  viewCopy = view;
  [viewCopy setShape:v13 animated:animatedCopy];
  [viewCopy setIsPulsing:v12];
}

- (void)setTrackingInProgressTextForFocusStateBadge:(id)badge
{
  badgeCopy = badge;
  if (badgeCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUVideoEditOverlayViewController.m" lineNumber:243 description:@"Unexpected focus state badge view class"];
    }

    v6 = PULocalizedString(@"PHOTOEDIT_CINEMATIC_TRACKING_IN_PROGRESS");
    [badgeCopy _setText:v6];
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

- (CGRect)rectForFocusStateBadge:(id)badge
{
  [badge sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = v4;
  v7 = v6;
  mediaView = [(PUVideoEditOverlayViewController *)self mediaView];
  [mediaView frame];
  v10 = (v9 - v5) * 0.5;
  [mediaView imageFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  view = [(PUVideoEditOverlayViewController *)self view];
  [mediaView convertRect:view toView:{v12, v14, v16, v18}];
  v21 = v20 + 9.0;

  view2 = [(PUVideoEditOverlayViewController *)self view];
  [view2 safeAreaInsets];
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
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v5 = [blackColor colorWithAlphaComponent:0.8];
  [v3 _setFillColor:v5];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v7 = [whiteColor colorWithAlphaComponent:0.8];
  [v3 _setContentColor:v7];

  return v3;
}

- (id)newTrackingViewWithFrame:(CGRect)frame initialState:(int64_t)state
{
  v6 = [[PUCinematicSubjectIndicator alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PUVideoEditOverlayViewController *)self _setState:state forView:v6 animated:0];
  return v6;
}

- (id)composition
{
  overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  compositionController = [overlayControllerDelegate compositionController];
  composition = [compositionController composition];

  return composition;
}

- (id)compositionController
{
  overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  compositionController = [overlayControllerDelegate compositionController];

  return compositionController;
}

- (void)trackingWasEditedAtTime:(id *)time
{
  overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v5 = *time;
  [overlayControllerDelegate cinematographyWasEditedAtTime:&v5];
}

- (void)trackingWasEdited
{
  overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
  v3 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  [overlayControllerDelegate cinematographyWasEditedAtTime:&v3];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)unadjustedTimeForPlayerTime:(SEL)time
{
  *retstr = *a4;
  compositionController = [(PUVideoEditOverlayViewController *)self compositionController];
  trimAdjustmentController = [compositionController trimAdjustmentController];

  if (trimAdjustmentController)
  {
    overlayControllerDelegate = [(PUVideoEditOverlayViewController *)self overlayControllerDelegate];
    hasTrimmedVideo = [overlayControllerDelegate hasTrimmedVideo];

    if (hasTrimmedVideo)
    {
      [trimAdjustmentController startTime];
      v12 = *a4;
      CMTimeAdd(retstr, &v12, &rhs);
    }
  }

  return result;
}

- (void)enableUIForCinematographyScriptLoad:(BOOL)load
{
  loadCopy = load;
  [(PUVideoEditOverlayViewController *)self setDisabledForCinematographyScriptLoad:!load];
  [(PXUISubjectTrackingView *)self->_trackingView enableUIForCinematographyScriptLoad:loadCopy];
  trackingView = self->_trackingView;

  [(PXUISubjectTrackingView *)trackingView setViewEnabled:loadCopy];
}

- (void)setHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  view = [(PUVideoEditOverlayViewController *)self view];
  isHidden = [view isHidden];
  v9 = [(PUVideoEditOverlayViewController *)self disabledForCinematographyScriptLoad]| hiddenCopy;
  if (isHidden != v9)
  {
    if (animatedCopy)
    {
      [view setHidden:0];
      v10 = 1.0;
      if (isHidden)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 1.0;
      }

      [view setAlpha:v11];
      if (v9)
      {
        v10 = 0.0;
      }

      v12 = MEMORY[0x1E69DD250];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __55__PUVideoEditOverlayViewController_setHidden_animated___block_invoke;
      v19[3] = &unk_1E7B7FF70;
      v20 = view;
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
      [view setAlpha:1.0];
      [view setHidden:v9];
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
  view = [(PUVideoEditOverlayViewController *)self view];
  isHidden = [view isHidden];

  return isHidden;
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v27 = v4;
    -[CALayer setBackgroundColor:](v4, "setBackgroundColor:", [clearColor CGColor]);

    v6 = objc_opt_new();
    v7 = +[PUPhotoEditProtoSettings sharedInstance];
    debugTrackerMask = [v7 debugTrackerMask];

    if (debugTrackerMask)
    {
      redColor = [MEMORY[0x1E69DC888] redColor];
      v29[0] = [redColor CGColor];
      redColor2 = [MEMORY[0x1E69DC888] redColor];
      v29[1] = [redColor2 CGColor];
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      v29[2] = [greenColor CGColor];
      greenColor2 = [MEMORY[0x1E69DC888] greenColor];
      v29[3] = [greenColor2 CGColor];
      redColor3 = [MEMORY[0x1E69DC888] redColor];
      v29[4] = [redColor3 CGColor];
      redColor4 = [MEMORY[0x1E69DC888] redColor];
      v29[5] = [redColor4 CGColor];
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
      [v6 setColors:v15];

      LODWORD(v16) = 0.5;
      v17 = v27;
      [(CALayer *)v27 setOpacity:v16];
    }

    else
    {
      clearColor2 = [MEMORY[0x1E69DC888] clearColor];
      v28[0] = [clearColor2 CGColor];
      clearColor3 = [MEMORY[0x1E69DC888] clearColor];
      v28[1] = [clearColor3 CGColor];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v28[2] = [whiteColor CGColor];
      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      v28[3] = [whiteColor2 CGColor];
      clearColor4 = [MEMORY[0x1E69DC888] clearColor];
      v28[4] = [clearColor4 CGColor];
      clearColor5 = [MEMORY[0x1E69DC888] clearColor];
      v28[5] = [clearColor5 CGColor];
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
  view = [(PUVideoEditOverlayViewController *)self view];
  [view safeAreaInsets];
  v5 = v4;

  safeAreaMask = [(PUVideoEditOverlayViewController *)self safeAreaMask];
  sublayers = [safeAreaMask sublayers];
  firstObject = [sublayers firstObject];

  view2 = [(PUVideoEditOverlayViewController *)self view];
  [view2 bounds];
  [safeAreaMask setFrame:?];

  [safeAreaMask bounds];
  [firstObject setFrame:?];
  view3 = [(PUVideoEditOverlayViewController *)self view];
  [view3 frame];
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
  [firstObject setLocations:v20];

  layer = [(PXUISubjectTrackingView *)self->_trackingView layer];
  [layer setMask:safeAreaMask];

  v22 = +[PUPhotoEditProtoSettings sharedInstance];
  LODWORD(v16) = [v22 debugTrackerMask];

  if (v16)
  {
    view4 = [(PUVideoEditOverlayViewController *)self view];
    layer2 = [view4 layer];
    safeAreaMask2 = [(PUVideoEditOverlayViewController *)self safeAreaMask];
    [layer2 addSublayer:safeAreaMask2];
  }
}

- (PUVideoEditOverlayViewController)initWithMediaView:(id)view cineController:(id)controller
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUVideoEditOverlayViewController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUVideoEditOverlayViewController.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"cineController != nil"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = PUVideoEditOverlayViewController;
  v11 = [(PUVideoEditOverlayViewController *)&v17 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E69C3C30]) initWithMediaView:viewCopy cineController:v10];
    trackingView = v11->_trackingView;
    v11->_trackingView = v12;

    [(PXUISubjectTrackingView *)v11->_trackingView setDelegate:v11];
    objc_storeStrong(&v11->_mediaView, view);
  }

  return v11;
}

@end