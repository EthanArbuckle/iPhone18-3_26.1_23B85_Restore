@interface PUPhotoEditPortraitFocusOverlayViewController
- (BOOL)_isValidRect:(CGRect)rect;
- (CGRect)currentFocusRect;
- (PUPhotoEditPortraitFocusDelegate)portraitFocusDelegate;
- (PUPhotoEditPortraitFocusOverlayViewController)initWithMediaView:(id)view isHDR:(BOOL)r delegate:(id)delegate;
- (PUPhotoEditToolControllerDelegate)delegate;
- (void)focusPointChanged:(CGPoint)changed;
- (void)mediaViewIsReady;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PUPhotoEditPortraitFocusOverlayViewController

- (PUPhotoEditPortraitFocusDelegate)portraitFocusDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_portraitFocusDelegate);

  return WeakRetained;
}

- (PUPhotoEditToolControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mediaViewIsReady
{
  if (([(PXUIPortraitFocusView *)self->_portraitFocusView drawingEnabled]& 1) == 0)
  {
    [(PXUIPortraitFocusView *)self->_portraitFocusView setDrawingEnabled:1];
    view = [(PUPhotoEditPortraitFocusOverlayViewController *)self view];
    [view setNeedsDisplay];
  }
}

- (CGRect)currentFocusRect
{
  delegate = [(PUPhotoEditPortraitFocusOverlayViewController *)self delegate];
  [delegate toolControllerOriginalImageSize:0];
  v5 = v4;
  v7 = v6;

  portraitFocusDelegate = [(PUPhotoEditPortraitFocusOverlayViewController *)self portraitFocusDelegate];
  [portraitFocusDelegate currentFocusRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v33.origin.x = v10;
  v33.origin.y = v12;
  v33.size.width = v14;
  v33.size.height = v16;
  MidX = CGRectGetMidX(v33);
  v34.origin.x = v10;
  v34.origin.y = v12;
  v34.size.width = v14;
  v34.size.height = v16;
  v18 = CGRectGetMidY(v34) * v7;
  delegate2 = [(PUPhotoEditPortraitFocusOverlayViewController *)self delegate];
  view = [(PUPhotoEditPortraitFocusOverlayViewController *)self view];
  [delegate2 toolController:0 viewPointFromOriginalPoint:view view:{MidX * v5, v18}];
  v22 = v21;
  v24 = v23;

  v25 = v22 + -37.5;
  v26 = v24 + -37.5;
  *&v27 = 75.0;
  if ([(PUPhotoEditPortraitFocusOverlayViewController *)self _isValidRect:v25, v26, 75.0, 75.0])
  {
    v28 = 75.0;
  }

  else
  {
    v35.origin.x = v25;
    v35.origin.y = v26;
    v35.size.width = 75.0;
    v35.size.height = 75.0;
    v32 = NSStringFromCGRect(v35);
    _PFAssertContinueHandler();

    v25 = *MEMORY[0x1E695F058];
    v26 = *(MEMORY[0x1E695F058] + 8);
    v27 = *(MEMORY[0x1E695F058] + 16);
    v28 = *(MEMORY[0x1E695F058] + 24);
  }

  v29 = v25;
  v30 = v26;
  v31 = *&v27;
  result.size.height = v28;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)focusPointChanged:(CGPoint)changed
{
  y = changed.y;
  x = changed.x;
  v44 = *MEMORY[0x1E69E9840];
  delegate = [(PUPhotoEditPortraitFocusOverlayViewController *)self delegate];
  [delegate toolControllerOriginalImageSize:0];
  v8 = v7;
  v10 = v9;

  v11 = v8 / v10;
  v12 = fabs(v8 / v10);
  if ((*&v12 - 0x10000000000000) >> 53 >= 0x3FF && (*&v12 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v50.width = v8;
    v50.height = v10;
    v32 = NSStringFromCGSize(v50);
    _PFAssertContinueHandler();
  }

  else
  {
    delegate2 = [(PUPhotoEditPortraitFocusOverlayViewController *)self delegate];
    view = [(PUPhotoEditPortraitFocusOverlayViewController *)self view];
    [delegate2 toolController:0 originalPointFromViewPoint:view view:{x, y}];
    v17 = v16;
    v19 = v18;

    v20 = v19 / v10;
    *v21.i64 = v17 / v8;
    *&v21.i64[1] = v19 / v10;
    if (v17 / v8 < 0.0 || v17 / v8 > 1.0 || v20 < 0.0 || v20 > 1.0)
    {
      v33 = v21;
      v22 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v46.x = x;
        v46.y = y;
        v23 = NSStringFromCGPoint(v46);
        v47.width = v8;
        v47.height = v10;
        v24 = NSStringFromCGSize(v47);
        v48.x = v17;
        v48.y = v19;
        v25 = NSStringFromCGPoint(v48);
        v49.x = v17 / v8;
        v49.y = v19 / v10;
        v26 = NSStringFromCGPoint(v49);
        *buf = 138413314;
        v35 = v23;
        v36 = 2112;
        v37 = v24;
        v38 = 2048;
        v39 = v8 / v10;
        v40 = 2112;
        v41 = v25;
        v42 = 2112;
        v43 = v26;
        _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_ERROR, "Portrait focus rect normalized point outside of bounds: focusPoint: %@, originalSize: %@, aspect: %0.2f, originalPoint: %@, normalizedPoint: %@", buf, 0x34u);
      }

      v27 = vaddq_f64(*MEMORY[0x1E69BDDA8], *(MEMORY[0x1E69BDDA8] + 16));
      v28 = vbslq_s8(vcgtq_f64(v27, v33), v33, v27);
      v21 = vbslq_s8(vcgtq_f64(v28, *MEMORY[0x1E69BDDA8]), v28, *MEMORY[0x1E69BDDA8]);
    }

    v29 = *v21.i64 + -0.1 / v11;
    v30 = *&v21.i64[1] + -0.1;
    portraitFocusDelegate = [(PUPhotoEditPortraitFocusOverlayViewController *)self portraitFocusDelegate];
    [portraitFocusDelegate focusRectChanged:{v29, v30, 0.2 / v11, 0.2}];

    [(PXUIPortraitFocusView *)self->_portraitFocusView animateNextRender];
    [(PXUIPortraitFocusView *)self->_portraitFocusView setNeedsDisplay];
  }
}

- (BOOL)_isValidRect:(CGRect)rect
{
  v3 = fabs(rect.origin.y) != INFINITY;
  v4 = (*&rect.origin.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v3;
  v5 = fabs(rect.size.height);
  v6 = rect.size.width >= 0.0;
  if (rect.size.height < 0.0)
  {
    v6 = 0;
  }

  if (v5 == INFINITY)
  {
    v6 = 0;
  }

  v7 = (*&rect.size.width & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v6;
  return v4 && v7;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = PUPhotoEditPortraitFocusOverlayViewController;
  coordinatorCopy = coordinator;
  [(PUPhotoEditPortraitFocusOverlayViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(PUPhotoEditPortraitFocusOverlayViewController *)self view];
  [view setAlpha:0.0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__PUPhotoEditPortraitFocusOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E7B7DC38;
  v9[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v9];
}

void __100__PUPhotoEditPortraitFocusOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 200000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PUPhotoEditPortraitFocusOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  block[3] = &unk_1E7B80DD0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

uint64_t __100__PUPhotoEditPortraitFocusOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setNeedsDisplay];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __100__PUPhotoEditPortraitFocusOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
  v4[3] = &unk_1E7B80DD0;
  v4[4] = *(a1 + 32);
  return [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.2];
}

void __100__PUPhotoEditPortraitFocusOverlayViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUPhotoEditPortraitFocusOverlayViewController;
  [(PUPhotoEditPortraitFocusOverlayViewController *)&v4 viewWillAppear:appear];
  [(PXUIPortraitFocusView *)self->_portraitFocusView installAssociatedMediaViewGesture];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(PXUIPortraitFocusView *)self->_portraitFocusView setDrawingEnabled:0];
  [(PXUIPortraitFocusView *)self->_portraitFocusView removeAssociatedMediaViewGesture];
  v5.receiver = self;
  v5.super_class = PUPhotoEditPortraitFocusOverlayViewController;
  [(PUPhotoEditPortraitFocusOverlayViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  v26.receiver = self;
  v26.super_class = PUPhotoEditPortraitFocusOverlayViewController;
  [(PUPhotoEditPortraitFocusOverlayViewController *)&v26 viewDidLayoutSubviews];
  v3 = objc_alloc_init(MEMORY[0x1E69794A0]);
  [(NUMediaView *)self->_mediaView imageFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  parentViewController = [(PUPhotoEditPortraitFocusOverlayViewController *)self parentViewController];
  view = [parentViewController view];
  superview = [(NUMediaView *)self->_mediaView superview];
  [view convertRect:superview fromView:{v5, v7, v9, v11}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  v23 = CGPathCreateWithRect(v27, 0);
  [v3 setPath:v23];
  CGPathRelease(v23);
  view2 = [(PUPhotoEditPortraitFocusOverlayViewController *)self view];
  layer = [view2 layer];
  [layer setMask:v3];
}

- (PUPhotoEditPortraitFocusOverlayViewController)initWithMediaView:(id)view isHDR:(BOOL)r delegate:(id)delegate
{
  rCopy = r;
  viewCopy = view;
  delegateCopy = delegate;
  v12 = delegateCopy;
  if (viewCopy)
  {
    if (delegateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotoEditPortraitFocusOverlayViewController.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPhotoEditPortraitFocusOverlayViewController.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = PUPhotoEditPortraitFocusOverlayViewController;
  v13 = [(PUPhotoEditPortraitFocusOverlayViewController *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_mediaView, view);
    objc_storeWeak(&v14->_delegate, v12);
    v15 = [objc_alloc(MEMORY[0x1E69C3C18]) initWithMediaView:viewCopy isHDR:rCopy];
    portraitFocusView = v14->_portraitFocusView;
    v14->_portraitFocusView = v15;

    [(PXUIPortraitFocusView *)v14->_portraitFocusView setFocusViewDelegate:v14];
  }

  return v14;
}

@end