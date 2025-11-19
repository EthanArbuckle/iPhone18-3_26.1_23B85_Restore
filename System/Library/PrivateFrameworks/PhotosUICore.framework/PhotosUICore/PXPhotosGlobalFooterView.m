@interface PXPhotosGlobalFooterView
- (BOOL)_shouldUseActionLinkInSubtitle1;
- (BOOL)_shouldUseActionLinkInSubtitle2;
- (CGSize)_performLayoutInWidth:(double)a3 updateSubviewFrames:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXPhotosGlobalFooterView)initWithFrame:(CGRect)a3 needsWorkaroundFor53118165:(BOOL)a4;
- (PXPhotosGlobalFooterViewDelegate)delegate;
- (PXPhotosGlobalFooterViewLayoutDelegate)layoutDelegate;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_animatedIconCrossedGridCycleBoundary;
- (void)_configurePhotoCollectionGlobalFooterLabel:(id)a3 withFont:(id)a4 textColor:(id)a5;
- (void)_contentSizeCategoryDidChangeNotification:(id)a3;
- (void)_performActionFromView:(id)a3 sourceRect:(CGRect)a4;
- (void)_updateAccessory;
- (void)_updateAnimatedIcon;
- (void)_updateExtendedTitle;
- (void)_updateFilterView;
- (void)_updateInternalMessageSubtitle;
- (void)_updateLabelColor;
- (void)_updateProcessingView;
- (void)_updateProgressAnimated:(BOOL)a3;
- (void)_updateSubtitle1;
- (void)_updateSubtitle2;
- (void)_updateTitle;
- (void)_updateTopAccessory;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDelegate:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setViewModel:(id)a3;
@end

@implementation PXPhotosGlobalFooterView

- (PXPhotosGlobalFooterViewLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

- (PXPhotosGlobalFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 contentType] == 2 && (objc_msgSend(v9, "tagIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"com.apple.photos.ui.link-action"), v11, v12))
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DC628];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __76__PXPhotosGlobalFooterView_textView_primaryActionForTextItem_defaultAction___block_invoke;
    v16[3] = &unk_1E774A2F8;
    v17 = v9;
    v18 = v8;
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

void __76__PXPhotosGlobalFooterView_textView_primaryActionForTextItem_defaultAction___block_invoke(id *a1)
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

- (void)_performActionFromView:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [(PXPhotosGlobalFooterView *)self viewModel];
  v11 = [v10 action];
  if (v11)
  {
    v12 = [v10 actionConfirmationAlertTitle];
    if (v12 && (v13 = v12, [v10 actionConfirmationAlertButtonTitle], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
    {
      v15 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v10 actionTitle];
        *buf = 138543362;
        v43 = v16;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "Presenting confirmation alert for action with title: %{public}@", buf, 0xCu);
      }

      v17 = MEMORY[0x1E69DC650];
      v18 = [v10 actionConfirmationAlertTitle];
      v19 = [v17 alertControllerWithTitle:v18 message:0 preferredStyle:0];

      v20 = [v10 actionStyle];
      if (v20 >= 3)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIAlertActionStyle UIAlertActionStyleFromPXAlertActionStyle(PXAlertActionStyle)"];
        [v33 handleFailureInFunction:v34 file:@"PXAlertActionStyle.h" lineNumber:42 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v21 = v20;
      v22 = MEMORY[0x1E69DC648];
      v23 = [v10 actionConfirmationAlertButtonTitle];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __62__PXPhotosGlobalFooterView__performActionFromView_sourceRect___block_invoke;
      v38[3] = &unk_1E774A2A0;
      v24 = v10;
      v39 = v24;
      v40 = self;
      v41 = v11;
      v25 = [v22 actionWithTitle:v23 style:v21 handler:v38];
      [v19 addAction:v25];

      v26 = MEMORY[0x1E69DC648];
      v27 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __62__PXPhotosGlobalFooterView__performActionFromView_sourceRect___block_invoke_396;
      v35[3] = &unk_1E774A2C8;
      v36 = v24;
      v37 = self;
      v28 = [v26 actionWithTitle:v27 style:1 handler:v35];
      [v19 addAction:v28];

      v29 = [v19 popoverPresentationController];
      [v29 setSourceView:v9];

      v30 = [v19 popoverPresentationController];
      [v30 setSourceRect:{x, y, width, height}];

      v31 = [v19 popoverPresentationController];
      [v31 setPermittedArrowDirections:2];

      v32 = [(PXPhotosGlobalFooterView *)self delegate];
      [v32 photosGlobalFooterView:self presentViewController:v19];

      self->_isPresentingAlert = 1;
    }

    else
    {
      v11[2](v11);
    }
  }
}

uint64_t __62__PXPhotosGlobalFooterView__performActionFromView_sourceRect___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) actionTitle];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "User confirmed action with title: %{public}@", &v5, 0xCu);
  }

  *(*(a1 + 40) + 608) = 0;
  return (*(*(a1 + 48) + 16))();
}

void __62__PXPhotosGlobalFooterView__performActionFromView_sourceRect___block_invoke_396(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) actionTitle];
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "User dismissed action with title: %{public}@", &v4, 0xCu);
  }

  *(*(a1 + 40) + 608) = 0;
}

- (void)_contentSizeCategoryDidChangeNotification:(id)a3
{
  [(PXPhotosGlobalFooterView *)self _updateTitle];
  [(PXPhotosGlobalFooterView *)self _updateExtendedTitle];
  [(PXPhotosGlobalFooterView *)self _updateInternalMessageSubtitle];
  [(PXPhotosGlobalFooterView *)self _updateSubtitle1];
  [(PXPhotosGlobalFooterView *)self _updateSubtitle2];

  [(PXPhotosGlobalFooterView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXPhotosGlobalFooterView;
  [(PXPhotosGlobalFooterView *)&v4 layoutSubviews];
  [(PXPhotosGlobalFooterView *)self bounds];
  [(PXPhotosGlobalFooterView *)self _performLayoutInWidth:1 updateSubviewFrames:v3];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PXPhotosGlobalFooterView;
  [(PXPhotosGlobalFooterView *)&v4 didMoveToWindow];
  if (self->_delegateRespondsTo.photosGlobalFooterViewDidMoveToWindow)
  {
    v3 = [(PXPhotosGlobalFooterView *)self delegate];
    [v3 photosGlobalFooterViewDidMoveToWindow:self];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXPhotosGlobalFooterView *)self _performLayoutInWidth:0 updateSubviewFrames:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_performLayoutInWidth:(double)a3 updateSubviewFrames:(BOOL)a4
{
  [(PXPhotosGlobalFooterView *)self directionalLayoutMargins];
  [(PXPhotosGlobalFooterView *)self safeAreaInsets];
  [(PXPhotosGlobalFooterView *)self safeAreaInsets];
  v5 = [(PXPhotosGlobalFooterView *)self traitCollection];
  [v5 displayScale];

  PXFloatCeilingToPixel();
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (PXPhotosGlobalFooterViewViewModelObservationContext != a5)
  {
    goto LABEL_26;
  }

  v14 = v8;
  if ((a4 & 0x8000) != 0)
  {
    [(PXPhotosGlobalFooterView *)self _updateAnimatedIcon];
  }

  if (a4)
  {
    [(PXPhotosGlobalFooterView *)self _updateTitle];
  }

  if ((a4 & 0x20002) != 0)
  {
    [(PXPhotosGlobalFooterView *)self _updateExtendedTitle];
  }

  if ((a4 & 0x20) != 0)
  {
    [(PXPhotosGlobalFooterView *)self _updateInternalMessageSubtitle];
  }

  if ((a4 & 4) != 0)
  {
    [(PXPhotosGlobalFooterView *)self _updateFilterView];
  }

  v9 = (a4 & 0x11C) != 0;
  v10 = (a4 & 0x110) != 0;
  if ((a4 & 0x2000C0) != 0)
  {
    v9 = 1;
    [(PXPhotosGlobalFooterView *)self _updateProgressAnimated:1];
    v10 = 1;
  }

  v11 = (a4 >> 9) & 1;
  v12 = v11 | v9;
  if ((a4 & 0x1E00) != 0 && self->_isPresentingAlert)
  {
    v13 = [(PXPhotosGlobalFooterView *)self delegate];
    [v13 photosGlobalFooterView:self presentViewController:0];

    self->_isPresentingAlert = 0;
  }

  if ((a4 & 0x4000) == 0)
  {
    if ((a4 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    [(PXPhotosGlobalFooterView *)self _updateTopAccessory];
    if ((a4 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [(PXPhotosGlobalFooterView *)self _updateAccessory];
  v12 = 1;
  if ((a4 & 0x10000) != 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  if ((a4 & 0x100000) != 0)
  {
LABEL_20:
    [(PXPhotosGlobalFooterView *)self _updateProcessingView];
  }

LABEL_21:
  if (v12)
  {
    [(PXPhotosGlobalFooterView *)self _updateSubtitle1];
  }

  if (v11 | v10)
  {
    [(PXPhotosGlobalFooterView *)self _updateSubtitle2];
  }

  [(PXPhotosGlobalFooterView *)self setNeedsLayout];
  v8 = v14;
LABEL_26:
}

- (void)_configurePhotoCollectionGlobalFooterLabel:(id)a3 withFont:(id)a4 textColor:(id)a5
{
  v7 = MEMORY[0x1E69DC888];
  v8 = a5;
  v9 = a4;
  v11 = a3;
  v10 = [v7 clearColor];
  [v11 setBackgroundColor:v10];

  [v11 setFont:v9];
  [v11 setTextAlignment:1];
  [v11 setTextColor:v8];

  [v11 setNumberOfLines:0];
}

- (BOOL)_shouldUseActionLinkInSubtitle1
{
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];
  v4 = [v3 actionTitle];
  if (v4)
  {
    v5 = [v3 subtitle1];
    if (v5)
    {
      v6 = ![(PXPhotosGlobalFooterView *)self _shouldUseActionLinkInSubtitle2];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_shouldUseActionLinkInSubtitle2
{
  v2 = [(PXPhotosGlobalFooterView *)self viewModel];
  v3 = [v2 actionTitle];
  if (v3)
  {
    v4 = [v2 subtitle2];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateTopAccessory
{
  [(UIView *)self->_topAccessoryView removeFromSuperview];
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];
  v4 = [v3 topAccessoryView];
  topAccessoryView = self->_topAccessoryView;
  self->_topAccessoryView = v4;

  if (self->_topAccessoryView)
  {

    [(PXPhotosGlobalFooterView *)self addSubview:?];
  }
}

- (void)_updateAccessory
{
  [(UIView *)self->_accessoryView removeFromSuperview];
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];
  v4 = [v3 accessoryView];
  accessoryView = self->_accessoryView;
  self->_accessoryView = v4;

  if (self->_accessoryView)
  {

    [(PXPhotosGlobalFooterView *)self addSubview:?];
  }
}

- (void)_updateProgressAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXPhotosGlobalFooterView *)self viewModel];
  [v5 progress];
  v7 = v6;

  progressView = self->_progressView;
  if (v7 == *off_1E7721FC8)
  {

    [(UIProgressView *)progressView setHidden:1];
  }

  else
  {
    if ([(UIProgressView *)progressView isHidden])
    {
      [(UIProgressView *)self->_progressView setHidden:0];
    }

    v9 = self->_progressView;
    v10 = [(PXPhotosGlobalFooterView *)self viewModel];
    v11 = [v10 isPaused];
    v12 = MEMORY[0x1E69DC888];
    v13 = v9;
    if (v11)
    {
      [v12 systemGrayColor];
    }

    else
    {
      [v12 systemBlueColor];
    }
    v14 = ;
    [(UIProgressView *)v13 setProgressTintColor:v14];

    v15 = +[PXFooterSettings sharedInstance];
    [v15 minimumDisplayedProgress];
    v17 = v16;

    if (v7 >= v17)
    {
      *&v18 = v7;
    }

    else
    {
      *&v18 = v17;
    }

    v19 = self->_progressView;

    [(UIProgressView *)v19 setProgress:v3 animated:v18];
  }
}

- (void)_updateSubtitle2
{
  v10 = [(PXPhotosGlobalFooterView *)self viewModel];
  v3 = [v10 subtitle2];
  v4 = [(PXPhotosGlobalFooterView *)self _shouldUseActionLinkInSubtitle2];
  subtitle2Label = self->_subtitle2Label;
  if (!v3 || v4)
  {
    [(UILabel *)subtitle2Label setHidden:1];
  }

  else
  {
    if ([(UILabel *)subtitle2Label isHidden])
    {
      [(UILabel *)self->_subtitle2Label setHidden:0];
    }

    [(UILabel *)self->_subtitle2Label setText:v3];
    [(PXPhotosGlobalFooterView *)self _configurePhotoCollectionGlobalFooterSubtitleLabel:self->_subtitle2Label];
  }

  subtitle2TextView = self->_subtitle2TextView;
  if (v4)
  {
    if ([(UITextView *)subtitle2TextView isHidden])
    {
      [(UITextView *)self->_subtitle2TextView setHidden:0];
    }

    [v10 actionStyle];
    [v10 useBlankActionSeparator];
    v7 = self->_subtitle2TextView;
    v8 = [v10 actionTitle];
    v9 = [(PXPhotosGlobalFooterView *)self labelColor];
    _ConfigureSubtitleTextView(v7, v3, v8, v9, 1, 0);
  }

  [(UITextView *)subtitle2TextView setHidden:1];
}

- (void)_updateSubtitle1
{
  v11 = [(PXPhotosGlobalFooterView *)self viewModel];
  v3 = [v11 subtitle1];
  subtitle1TextView = self->_subtitle1TextView;
  if (v3)
  {
    if ([(UITextView *)subtitle1TextView isHidden])
    {
      [(UITextView *)self->_subtitle1TextView setHidden:0];
    }

    if ([(PXPhotosGlobalFooterView *)self _shouldUseActionLinkInSubtitle1])
    {
      v5 = [v11 actionTitle];
      v6 = v11;
      v7 = v5;
    }

    else
    {
      v7 = 0;
      v6 = v11;
    }

    v8 = [v6 subtitle1Style];
    [v11 actionStyle];
    [v11 useBlankActionSeparator];
    [v11 showBadge];
    v9 = self->_subtitle1TextView;
    v10 = [(PXPhotosGlobalFooterView *)self labelColor];
    _ConfigureSubtitleTextView(v9, v3, v7, v10, 0, v8);
  }

  [(UITextView *)subtitle1TextView setHidden:1];
}

- (void)_updateFilterView
{
  [(UIView *)self->_filterView removeFromSuperview];
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];
  v4 = [v3 filterView];
  filterView = self->_filterView;
  self->_filterView = v4;

  if (self->_filterView)
  {
    v6 = [(PXPhotosGlobalFooterView *)self viewModel];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v8 = [v6 adjustedChromeColor:v7];

    [(UIView *)self->_filterView setCaptionColor:v8];
    [(PXPhotosGlobalFooterView *)self addSubview:self->_filterView];
  }
}

- (void)_updateInternalMessageSubtitle
{
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];
  v6 = [v3 internalMessageSubtitle];

  v4 = [v6 length];
  internalMessageSubtitleLabel = self->_internalMessageSubtitleLabel;
  if (v4)
  {
    if ([(UILabel *)internalMessageSubtitleLabel isHidden])
    {
      [(UILabel *)self->_internalMessageSubtitleLabel setHidden:0];
    }

    [(UILabel *)self->_internalMessageSubtitleLabel setText:v6];
  }

  else
  {
    [(UILabel *)internalMessageSubtitleLabel setHidden:1];
  }
}

- (void)_updateExtendedTitle
{
  v22 = [(PXPhotosGlobalFooterView *)self viewModel];
  v3 = [v22 extendedTitle];
  extendedTitleLabel = self->_extendedTitleLabel;
  if (v3)
  {
    if ([(UILabel *)extendedTitleLabel isHidden])
    {
      [(UILabel *)self->_extendedTitleLabel setHidden:0];
    }

    [(PXPhotosGlobalFooterView *)self _configurePhotoCollectionGlobalFooterExtendedTitleLabel:self->_extendedTitleLabel];
    v5 = [v22 extendedSystemImageName];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v7 = MEMORY[0x1E69DCAD8];
      v8 = [(UILabel *)self->_extendedTitleLabel font];
      v9 = [v7 configurationWithFont:v8];

      v10 = MEMORY[0x1E69DCAD8];
      v11 = [(PXPhotosGlobalFooterView *)self labelColor];
      v12 = [v10 configurationWithHierarchicalColor:v11];
      v13 = [v9 configurationByApplyingConfiguration:v12];

      v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5 withConfiguration:v13];
      [v6 setImage:v14];

      v15 = objc_alloc_init(MEMORY[0x1E696AD40]);
      v16 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v6];
      [v15 appendAttributedString:v16];

      v17 = objc_alloc(MEMORY[0x1E696AAB0]);
      v18 = [@" " stringByAppendingString:v3];
      v19 = [v17 initWithString:v18];
      [v15 appendAttributedString:v19];

      v20 = [v15 copy];
      v21 = 0;
    }

    else
    {
      v21 = v3;
      v20 = 0;
    }

    [(UILabel *)self->_extendedTitleLabel setText:v21];
    [(UILabel *)self->_extendedTitleLabel setAttributedText:v20];
  }

  else
  {
    [(UILabel *)extendedTitleLabel setHidden:1];
  }
}

- (void)_updateTitle
{
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];
  v5 = [v3 title];

  titleLabel = self->_titleLabel;
  if (v5)
  {
    if ([(UILabel *)titleLabel isHidden])
    {
      [(UILabel *)self->_titleLabel setHidden:0];
    }

    [(UILabel *)self->_titleLabel setText:v5];
    [(PXPhotosGlobalFooterView *)self _configurePhotoCollectionGlobalFooterTitleLabel:self->_titleLabel];
  }

  else
  {
    [(UILabel *)titleLabel setHidden:1];
  }
}

- (void)_animatedIconCrossedGridCycleBoundary
{
  v2 = [(PXPhotosGlobalFooterView *)self viewModel];
  [v2 footerAnimationCrossedGridCycleBoundary];
}

- (void)_updateAnimatedIcon
{
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];
  v4 = [v3 animatedIconMode];

  v5 = v4 != 0;
  if (v4)
  {
    if (!self->_animatedIconView)
    {
      v6 = objc_alloc_init(PXFooterAnimatedIconView);
      animatedIconView = self->_animatedIconView;
      self->_animatedIconView = v6;

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:self selector:sel__animatedIconCrossedGridCycleBoundary name:@"PXFooterAnimatedIconViewCrossedGridCycleBoundaryNotificationName" object:self->_animatedIconView];

      v9 = [(PXPhotosGlobalFooterView *)self needsWorkaroundFor53118165];
      v10 = self->_animatedIconView;
      if (v9)
      {
        [(PXPhotosGlobalFooterView *)self insertSubview:v10 aboveSubview:self->_backgroundView];
      }

      else
      {
        [(PXPhotosGlobalFooterView *)self insertSubview:v10 atIndex:0];
      }
    }

    self->_hasAnimatedIconView = v5;
    v11 = [(PXPhotosGlobalFooterView *)self isHidden];
  }

  else
  {
    self->_hasAnimatedIconView = v5;
    v11 = 1;
  }

  [(PXFooterAnimatedIconView *)self->_animatedIconView setHidden:v11];
  v12 = self->_animatedIconView;

  [(PXFooterAnimatedIconView *)v12 setDesiredMode:v4];
}

- (void)_updateProcessingView
{
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];
  v4 = [v3 isProcessing];

  processingView = self->_processingView;
  if (v4)
  {
    if (!processingView)
    {
      v6 = [(PXPhotosGlobalFooterView *)self viewModel];
      v7 = [PXLemonadeFeatureAvailabilityProcessingViewFactory makeProcessingViewWithFooterViewModel:v6];
      v8 = self->_processingView;
      self->_processingView = v7;

      [(PXPhotosGlobalFooterView *)self addSubview:self->_processingView];
      [(UIView *)self->_processingView sizeToFit];
      processingView = self->_processingView;
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  [(UIView *)processingView setHidden:v9];
}

- (void)_updateLabelColor
{
  v7 = [MEMORY[0x1E69DC888] labelColor];
  v3 = [(PXPhotosGlobalFooterView *)self viewModel];

  if (v3)
  {
    v4 = [(PXPhotosGlobalFooterView *)self viewModel];
    v5 = [v4 adjustedChromeColor:v7];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [(PXPhotosGlobalFooterView *)self setLabelColor:v6];
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PXPhotosGlobalFooterView;
  [(PXPhotosGlobalFooterView *)&v4 setHidden:a3];
  [(PXPhotosGlobalFooterView *)self _updateAnimatedIcon];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->photosGlobalFooterViewDidChangeHeight = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->photosGlobalFooterViewDidMoveToWindow = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v7 = v5;
    [(PXFooterViewModel *)viewModel unregisterChangeObserver:self context:PXPhotosGlobalFooterViewViewModelObservationContext];
    objc_storeStrong(&self->_viewModel, a3);
    [(PXPhotosGlobalFooterView *)self _updateLabelColor];
    [(PXPhotosGlobalFooterView *)self _updateTopAccessory];
    [(PXPhotosGlobalFooterView *)self _updateAnimatedIcon];
    [(PXPhotosGlobalFooterView *)self _updateTitle];
    [(PXPhotosGlobalFooterView *)self _updateExtendedTitle];
    [(PXPhotosGlobalFooterView *)self _updateInternalMessageSubtitle];
    [(PXPhotosGlobalFooterView *)self _updateFilterView];
    [(PXPhotosGlobalFooterView *)self _updateSubtitle1];
    [(PXPhotosGlobalFooterView *)self _updateSubtitle2];
    [(PXPhotosGlobalFooterView *)self _updateProgressAnimated:0];
    [(PXPhotosGlobalFooterView *)self _updateAccessory];
    [(PXPhotosGlobalFooterView *)self _updateProcessingView];
    [(PXPhotosGlobalFooterView *)self setNeedsLayout];
    [(PXFooterViewModel *)self->_viewModel registerChangeObserver:self context:PXPhotosGlobalFooterViewViewModelObservationContext];
    v5 = v7;
  }
}

- (PXPhotosGlobalFooterView)initWithFrame:(CGRect)a3 needsWorkaroundFor53118165:(BOOL)a4
{
  v26.receiver = self;
  v26.super_class = PXPhotosGlobalFooterView;
  v5 = [(PXPhotosGlobalFooterView *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    if (a4)
    {
      v7 = +[PXWorkaroundSettings sharedInstance];
      v6->_needsWorkaroundFor53118165 = [v7 shouldWorkAround53118165];

      if (v6->_needsWorkaroundFor53118165)
      {
        v8 = objc_alloc_init(PXGradientView);
        backgroundView = v6->_backgroundView;
        v6->_backgroundView = v8;

        [(PXPhotosGlobalFooterView *)v6 addSubview:v6->_backgroundView];
      }
    }

    else
    {
      v5->_needsWorkaroundFor53118165 = 0;
    }

    [(PXPhotosGlobalFooterView *)v6 _updateLabelColor];
    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [v10 initWithFrame:{*MEMORY[0x1E695F058], v12, v13, v14}];
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v15;

    [(PXPhotosGlobalFooterView *)v6 addSubview:v6->_titleLabel];
    [(PXPhotosGlobalFooterView *)v6 _configurePhotoCollectionGlobalFooterTitleLabel:v6->_titleLabel];
    v17 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    extendedTitleLabel = v6->_extendedTitleLabel;
    v6->_extendedTitleLabel = v17;

    [(PXPhotosGlobalFooterView *)v6 addSubview:v6->_extendedTitleLabel];
    [(PXPhotosGlobalFooterView *)v6 _configurePhotoCollectionGlobalFooterExtendedTitleLabel:v6->_extendedTitleLabel];
    v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v11, v12, v13, v14}];
    internalMessageSubtitleLabel = v6->_internalMessageSubtitleLabel;
    v6->_internalMessageSubtitleLabel = v19;

    [(PXPhotosGlobalFooterView *)v6 addSubview:v6->_internalMessageSubtitleLabel];
    [(PXPhotosGlobalFooterView *)v6 _configurePhotoCollectionGlobalFooterInternalMessageSubtitleLabel:v6->_internalMessageSubtitleLabel];
    v21 = [objc_alloc(MEMORY[0x1E69DD168]) initWithFrame:{v11, v12, v13, v14}];
    subtitle1TextView = v6->_subtitle1TextView;
    v6->_subtitle1TextView = v21;

    [(UITextView *)v6->_subtitle1TextView setDelegate:v6];
    [(PXPhotosGlobalFooterView *)v6 addSubview:v6->_subtitle1TextView];
    v23 = v6->_subtitle1TextView;
    v24 = [(PXPhotosGlobalFooterView *)v6 labelColor];
    _ConfigurePhotoCollectionGlobalFooterSubtitleTextView(v23, 0, v24);
  }

  return 0;
}

@end