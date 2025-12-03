@interface PXCMMProgressBannerView
- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXCMMProgressBannerView)init;
- (PXCMMProgressBannerView)initWithCoder:(id)coder;
- (PXCMMProgressBannerView)initWithFrame:(CGRect)frame;
- (PXCMMProgressBannerView)initWithMomentShareStatusPresentation:(id)presentation;
- (PXCMMProgressBannerViewDelegate)delegate;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_performActionFromView:(id)view sourceRect:(CGRect)rect;
- (void)_updateActivityTitle;
- (void)_updatePauseTitle;
- (void)_updateProgress;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXCMMProgressBannerView

- (PXCMMProgressBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  if ([itemCopy contentType] == 2 && (objc_msgSend(itemCopy, "tagIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"com.apple.photos.ui.link-action"), v11, v12))
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DC628];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __75__PXCMMProgressBannerView_textView_primaryActionForTextItem_defaultAction___block_invoke;
    v16[3] = &unk_1E774A2F8;
    v17 = itemCopy;
    v18 = viewCopy;
    objc_copyWeak(&v19, &location);
    v14 = [v13 actionWithHandler:v16];
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __75__PXCMMProgressBannerView_textView_primaryActionForTextItem_defaultAction___block_invoke(id *a1)
{
  v2 = [a1[4] range];
  v4 = v3;
  v5 = a1[5];
  v6 = [v5 beginningOfDocument];
  v18 = [v5 positionFromPosition:v6 offset:v2];

  v7 = [a1[5] positionFromPosition:v18 offset:v4];
  v8 = [a1[5] textRangeFromPosition:v18 toPosition:v7];
  [a1[5] firstRectForRange:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained _performActionFromView:a1[5] sourceRect:{v10, v12, v14, v16}];
}

- (void)_performActionFromView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  action = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation action];
  if (action)
  {
    v11 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      momentShareStatusPresentation = self->_momentShareStatusPresentation;
      *buf = 138543362;
      v38 = momentShareStatusPresentation;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "CMM Progress Banner: User invoked un-pause action (%{public}@)", buf, 0xCu);
    }

    actionConfirmationAlertTitle = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation actionConfirmationAlertTitle];
    actionConfirmationAlertButtonTitle = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation actionConfirmationAlertButtonTitle];
    v15 = actionConfirmationAlertButtonTitle;
    if (actionConfirmationAlertTitle)
    {
      v16 = actionConfirmationAlertButtonTitle == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    v18 = PLUserStatusUIGetLog();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = self->_momentShareStatusPresentation;
        *buf = 138543362;
        v38 = v20;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "CMM Progress Banner: Presenting confirmation alert (%{public}@)", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:actionConfirmationAlertTitle message:0 preferredStyle:0];
      v22 = MEMORY[0x1E69DC648];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __61__PXCMMProgressBannerView__performActionFromView_sourceRect___block_invoke;
      v34[3] = &unk_1E773B820;
      v34[4] = self;
      objc_copyWeak(&v36, buf);
      v35 = action;
      v23 = [v22 actionWithTitle:v15 style:0 handler:v34];
      [v21 addAction:v23];

      v24 = MEMORY[0x1E69DC648];
      v25 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __61__PXCMMProgressBannerView__performActionFromView_sourceRect___block_invoke_230;
      v32[3] = &unk_1E773B848;
      v32[4] = self;
      objc_copyWeak(&v33, buf);
      v26 = [v24 actionWithTitle:v25 style:1 handler:v32];
      [v21 addAction:v26];

      popoverPresentationController = [v21 popoverPresentationController];
      [popoverPresentationController setSourceView:viewCopy];

      popoverPresentationController2 = [v21 popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{x, y, width, height}];

      popoverPresentationController3 = [v21 popoverPresentationController];
      [popoverPresentationController3 setPermittedArrowDirections:2];

      [(PXCMMProgressBannerView *)self setAlertController:v21];
      delegate = [(PXCMMProgressBannerView *)self delegate];
      [delegate progressBannerView:self presentViewController:v21];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&v36);

      objc_destroyWeak(buf);
    }

    else
    {
      if (v19)
      {
        v31 = self->_momentShareStatusPresentation;
        *buf = 138543362;
        v38 = v31;
        _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_DEFAULT, "CMM Progress Banner: Invoking action without confirmation (%{public}@)", buf, 0xCu);
      }

      action[2](action);
    }
  }
}

uint64_t __61__PXCMMProgressBannerView__performActionFromView_sourceRect___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 408);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "CMM Progress Banner: User confirmed action (%{public}@)", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setAlertController:0];

  return (*(*(a1 + 40) + 16))();
}

void __61__PXCMMProgressBannerView__performActionFromView_sourceRect___block_invoke_230(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 408);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "CMM Progress Banner: User cancelled action (%{public}@)", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAlertController:0];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v18 = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  if (PXMomentShareStatusPresentationObservationContext_128145 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMProgressBannerView.m" lineNumber:287 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if ((change & 0x20) != 0)
  {
    [(PXCMMProgressBannerView *)self _updatePauseTitle];
  }

  if ((change & 0x7C0) != 0)
  {
    alertController = [(PXCMMProgressBannerView *)self alertController];
    if (alertController)
    {
      v12 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        momentShareStatusPresentation = self->_momentShareStatusPresentation;
        v16 = 138543362;
        v17 = momentShareStatusPresentation;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "CMM Progress Banner: Auto-dismiss alert for replaced action (%{public}@)", &v16, 0xCu);
      }

      delegate = [(PXCMMProgressBannerView *)self delegate];
      [delegate progressBannerView:self dismissViewController:alertController];

      [(PXCMMProgressBannerView *)self setAlertController:0];
    }

    LODWORD(alertController) = 1;
    if ((change & 0x1000) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    alertController = ((change >> 3) & 1);
    if ((change & 0x1000) != 0)
    {
LABEL_10:
      [(PXCMMProgressBannerView *)self _updateProgress];
    }
  }

  if (alertController)
  {
    [(PXCMMProgressBannerView *)self _updateActivityTitle];
  }
}

- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames
{
  [(UITextView *)self->_activityTextView font];
  objc_claimAutoreleasedReturnValue();
  PXScaledValueForTextStyleWithMaxContentSizeCategoryAndSymbolicTraits();
}

- (void)_updateProgress
{
  [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation activityProgress];
  if (*&v3 == -1.0)
  {
    v4 = +[PXCompleteMyMomentSettings sharedInstance];
    if ([v4 showProgressBannerView])
    {
      v5 = +[PXCompleteMyMomentSettings sharedInstance];
      showProgressBannerViewPaused = [v5 showProgressBannerViewPaused];

      LODWORD(v3) = 0.5;
      if (showProgressBannerViewPaused)
      {
        *&v3 = -1.0;
      }
    }

    else
    {

      LODWORD(v3) = -1.0;
    }
  }

  progressView = self->_progressView;

  [(UIProgressView *)progressView setProgress:v3];
}

- (void)_updatePauseTitle
{
  pauseTitle = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation pauseTitle];
  if (![(__CFString *)pauseTitle length])
  {
    v3 = +[PXCompleteMyMomentSettings sharedInstance];
    if ([v3 showProgressBannerView])
    {
      v4 = +[PXCompleteMyMomentSettings sharedInstance];
      showProgressBannerViewPaused = [v4 showProgressBannerViewPaused];

      if (!showProgressBannerViewPaused)
      {
        goto LABEL_6;
      }

      v3 = pauseTitle;
      pauseTitle = @"<debug pause status>";
    }
  }

LABEL_6:
  text = [(UILabel *)self->_pauseLabel text];
  v7 = [text length] == 0;

  LODWORD(text) = [(__CFString *)pauseTitle length]== 0;
  [(UILabel *)self->_pauseLabel setText:pauseTitle];
  if (v7 != text)
  {
    [(PXCMMProgressBannerView *)self setNeedsLayout];
  }
}

- (void)_updateActivityTitle
{
  v5 = *MEMORY[0x1E69E9840];
  activityTitle = [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation activityTitle];
  if (![activityTitle length])
  {
    v3 = +[PXCompleteMyMomentSettings sharedInstance];
    showProgressBannerView = [v3 showProgressBannerView];

    if (showProgressBannerView)
    {
    }
  }

  _ActivityTitleAttributes();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCMMProgressBannerView;
  [(PXCMMProgressBannerView *)&v4 layoutSubviews];
  [(PXCMMProgressBannerView *)self bounds];
  [(PXCMMProgressBannerView *)self _performLayoutInWidth:1 updateSubviewFrames:v3];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXCMMProgressBannerView *)self _performLayoutInWidth:0 updateSubviewFrames:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXCMMProgressBannerView)initWithMomentShareStatusPresentation:(id)presentation
{
  presentationCopy = presentation;
  if (!presentationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMProgressBannerView.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"momentShareStatusPresentation"}];
  }

  v17.receiver = self;
  v17.super_class = PXCMMProgressBannerView;
  v7 = *MEMORY[0x1E695F058];
  v8 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v10 = *(MEMORY[0x1E695F058] + 24);
  v11 = [(PXCMMProgressBannerView *)&v17 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
  p_isa = &v11->super.super.super.isa;
  if (v11)
  {
    objc_storeStrong(&v11->_momentShareStatusPresentation, presentation);
    [p_isa[51] registerChangeObserver:p_isa context:PXMomentShareStatusPresentationObservationContext_128145];
    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{v7, v8, v9, v10}];
    v14 = p_isa[52];
    p_isa[52] = v13;

    [MEMORY[0x1E69DC730] effectWithStyle:10];
    [p_isa[52] setEffect:objc_claimAutoreleasedReturnValue()];
    [p_isa[52] setAutoresizingMask:18];
    [p_isa addSubview:p_isa[52]];
    [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{v7, v8, v9, v10}];
    _ActivityTitleAttributes();
  }

  return 0;
}

- (PXCMMProgressBannerView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMProgressBannerView.m" lineNumber:48 description:{@"%s is not available as initializer", "-[PXCMMProgressBannerView initWithCoder:]"}];

  abort();
}

- (PXCMMProgressBannerView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMProgressBannerView.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXCMMProgressBannerView initWithFrame:]"}];

  abort();
}

- (PXCMMProgressBannerView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMProgressBannerView.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXCMMProgressBannerView init]"}];

  abort();
}

@end