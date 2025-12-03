@interface PXPhotosGlobalFooterView
- (BOOL)_shouldUseActionLinkInSubtitle1;
- (BOOL)_shouldUseActionLinkInSubtitle2;
- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXPhotosGlobalFooterView)initWithFrame:(CGRect)frame needsWorkaroundFor53118165:(BOOL)for53118165;
- (PXPhotosGlobalFooterViewDelegate)delegate;
- (PXPhotosGlobalFooterViewLayoutDelegate)layoutDelegate;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_animatedIconCrossedGridCycleBoundary;
- (void)_configurePhotoCollectionGlobalFooterLabel:(id)label withFont:(id)font textColor:(id)color;
- (void)_contentSizeCategoryDidChangeNotification:(id)notification;
- (void)_performActionFromView:(id)view sourceRect:(CGRect)rect;
- (void)_updateAccessory;
- (void)_updateAnimatedIcon;
- (void)_updateExtendedTitle;
- (void)_updateFilterView;
- (void)_updateInternalMessageSubtitle;
- (void)_updateLabelColor;
- (void)_updateProcessingView;
- (void)_updateProgressAnimated:(BOOL)animated;
- (void)_updateSubtitle1;
- (void)_updateSubtitle2;
- (void)_updateTitle;
- (void)_updateTopAccessory;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setHidden:(BOOL)hidden;
- (void)setViewModel:(id)model;
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
    v16[2] = __76__PXPhotosGlobalFooterView_textView_primaryActionForTextItem_defaultAction___block_invoke;
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

- (void)_performActionFromView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v44 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  action = [viewModel action];
  if (action)
  {
    actionConfirmationAlertTitle = [viewModel actionConfirmationAlertTitle];
    if (actionConfirmationAlertTitle && (v13 = actionConfirmationAlertTitle, [viewModel actionConfirmationAlertButtonTitle], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
    {
      v15 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        actionTitle = [viewModel actionTitle];
        *buf = 138543362;
        v43 = actionTitle;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "Presenting confirmation alert for action with title: %{public}@", buf, 0xCu);
      }

      v17 = MEMORY[0x1E69DC650];
      actionConfirmationAlertTitle2 = [viewModel actionConfirmationAlertTitle];
      v19 = [v17 alertControllerWithTitle:actionConfirmationAlertTitle2 message:0 preferredStyle:0];

      actionStyle = [viewModel actionStyle];
      if (actionStyle >= 3)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIAlertActionStyle UIAlertActionStyleFromPXAlertActionStyle(PXAlertActionStyle)"];
        [currentHandler handleFailureInFunction:v34 file:@"PXAlertActionStyle.h" lineNumber:42 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v21 = actionStyle;
      v22 = MEMORY[0x1E69DC648];
      actionConfirmationAlertButtonTitle = [viewModel actionConfirmationAlertButtonTitle];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __62__PXPhotosGlobalFooterView__performActionFromView_sourceRect___block_invoke;
      v38[3] = &unk_1E774A2A0;
      v24 = viewModel;
      v39 = v24;
      selfCopy = self;
      v41 = action;
      v25 = [v22 actionWithTitle:actionConfirmationAlertButtonTitle style:v21 handler:v38];
      [v19 addAction:v25];

      v26 = MEMORY[0x1E69DC648];
      v27 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __62__PXPhotosGlobalFooterView__performActionFromView_sourceRect___block_invoke_396;
      v35[3] = &unk_1E774A2C8;
      v36 = v24;
      selfCopy2 = self;
      v28 = [v26 actionWithTitle:v27 style:1 handler:v35];
      [v19 addAction:v28];

      popoverPresentationController = [v19 popoverPresentationController];
      [popoverPresentationController setSourceView:viewCopy];

      popoverPresentationController2 = [v19 popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{x, y, width, height}];

      popoverPresentationController3 = [v19 popoverPresentationController];
      [popoverPresentationController3 setPermittedArrowDirections:2];

      delegate = [(PXPhotosGlobalFooterView *)self delegate];
      [delegate photosGlobalFooterView:self presentViewController:v19];

      self->_isPresentingAlert = 1;
    }

    else
    {
      action[2](action);
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

- (void)_contentSizeCategoryDidChangeNotification:(id)notification
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
    delegate = [(PXPhotosGlobalFooterView *)self delegate];
    [delegate photosGlobalFooterViewDidMoveToWindow:self];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXPhotosGlobalFooterView *)self _performLayoutInWidth:0 updateSubviewFrames:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames
{
  [(PXPhotosGlobalFooterView *)self directionalLayoutMargins];
  [(PXPhotosGlobalFooterView *)self safeAreaInsets];
  [(PXPhotosGlobalFooterView *)self safeAreaInsets];
  traitCollection = [(PXPhotosGlobalFooterView *)self traitCollection];
  [traitCollection displayScale];

  PXFloatCeilingToPixel();
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXPhotosGlobalFooterViewViewModelObservationContext != context)
  {
    goto LABEL_26;
  }

  v14 = observableCopy;
  if ((change & 0x8000) != 0)
  {
    [(PXPhotosGlobalFooterView *)self _updateAnimatedIcon];
  }

  if (change)
  {
    [(PXPhotosGlobalFooterView *)self _updateTitle];
  }

  if ((change & 0x20002) != 0)
  {
    [(PXPhotosGlobalFooterView *)self _updateExtendedTitle];
  }

  if ((change & 0x20) != 0)
  {
    [(PXPhotosGlobalFooterView *)self _updateInternalMessageSubtitle];
  }

  if ((change & 4) != 0)
  {
    [(PXPhotosGlobalFooterView *)self _updateFilterView];
  }

  v9 = (change & 0x11C) != 0;
  v10 = (change & 0x110) != 0;
  if ((change & 0x2000C0) != 0)
  {
    v9 = 1;
    [(PXPhotosGlobalFooterView *)self _updateProgressAnimated:1];
    v10 = 1;
  }

  v11 = (change >> 9) & 1;
  v12 = v11 | v9;
  if ((change & 0x1E00) != 0 && self->_isPresentingAlert)
  {
    delegate = [(PXPhotosGlobalFooterView *)self delegate];
    [delegate photosGlobalFooterView:self presentViewController:0];

    self->_isPresentingAlert = 0;
  }

  if ((change & 0x4000) == 0)
  {
    if ((change & 0x10000) == 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    [(PXPhotosGlobalFooterView *)self _updateTopAccessory];
    if ((change & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  [(PXPhotosGlobalFooterView *)self _updateAccessory];
  v12 = 1;
  if ((change & 0x10000) != 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  if ((change & 0x100000) != 0)
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
  observableCopy = v14;
LABEL_26:
}

- (void)_configurePhotoCollectionGlobalFooterLabel:(id)label withFont:(id)font textColor:(id)color
{
  v7 = MEMORY[0x1E69DC888];
  colorCopy = color;
  fontCopy = font;
  labelCopy = label;
  clearColor = [v7 clearColor];
  [labelCopy setBackgroundColor:clearColor];

  [labelCopy setFont:fontCopy];
  [labelCopy setTextAlignment:1];
  [labelCopy setTextColor:colorCopy];

  [labelCopy setNumberOfLines:0];
}

- (BOOL)_shouldUseActionLinkInSubtitle1
{
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  actionTitle = [viewModel actionTitle];
  if (actionTitle)
  {
    subtitle1 = [viewModel subtitle1];
    if (subtitle1)
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
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  actionTitle = [viewModel actionTitle];
  if (actionTitle)
  {
    subtitle2 = [viewModel subtitle2];
    v5 = subtitle2 != 0;
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
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  topAccessoryView = [viewModel topAccessoryView];
  topAccessoryView = self->_topAccessoryView;
  self->_topAccessoryView = topAccessoryView;

  if (self->_topAccessoryView)
  {

    [(PXPhotosGlobalFooterView *)self addSubview:?];
  }
}

- (void)_updateAccessory
{
  [(UIView *)self->_accessoryView removeFromSuperview];
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  accessoryView = [viewModel accessoryView];
  accessoryView = self->_accessoryView;
  self->_accessoryView = accessoryView;

  if (self->_accessoryView)
  {

    [(PXPhotosGlobalFooterView *)self addSubview:?];
  }
}

- (void)_updateProgressAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  [viewModel progress];
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
    viewModel2 = [(PXPhotosGlobalFooterView *)self viewModel];
    isPaused = [viewModel2 isPaused];
    v12 = MEMORY[0x1E69DC888];
    v13 = v9;
    if (isPaused)
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

    [(UIProgressView *)v19 setProgress:animatedCopy animated:v18];
  }
}

- (void)_updateSubtitle2
{
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  subtitle2 = [viewModel subtitle2];
  _shouldUseActionLinkInSubtitle2 = [(PXPhotosGlobalFooterView *)self _shouldUseActionLinkInSubtitle2];
  subtitle2Label = self->_subtitle2Label;
  if (!subtitle2 || _shouldUseActionLinkInSubtitle2)
  {
    [(UILabel *)subtitle2Label setHidden:1];
  }

  else
  {
    if ([(UILabel *)subtitle2Label isHidden])
    {
      [(UILabel *)self->_subtitle2Label setHidden:0];
    }

    [(UILabel *)self->_subtitle2Label setText:subtitle2];
    [(PXPhotosGlobalFooterView *)self _configurePhotoCollectionGlobalFooterSubtitleLabel:self->_subtitle2Label];
  }

  subtitle2TextView = self->_subtitle2TextView;
  if (_shouldUseActionLinkInSubtitle2)
  {
    if ([(UITextView *)subtitle2TextView isHidden])
    {
      [(UITextView *)self->_subtitle2TextView setHidden:0];
    }

    [viewModel actionStyle];
    [viewModel useBlankActionSeparator];
    v7 = self->_subtitle2TextView;
    actionTitle = [viewModel actionTitle];
    labelColor = [(PXPhotosGlobalFooterView *)self labelColor];
    _ConfigureSubtitleTextView(v7, subtitle2, actionTitle, labelColor, 1, 0);
  }

  [(UITextView *)subtitle2TextView setHidden:1];
}

- (void)_updateSubtitle1
{
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  subtitle1 = [viewModel subtitle1];
  subtitle1TextView = self->_subtitle1TextView;
  if (subtitle1)
  {
    if ([(UITextView *)subtitle1TextView isHidden])
    {
      [(UITextView *)self->_subtitle1TextView setHidden:0];
    }

    if ([(PXPhotosGlobalFooterView *)self _shouldUseActionLinkInSubtitle1])
    {
      actionTitle = [viewModel actionTitle];
      v6 = viewModel;
      v7 = actionTitle;
    }

    else
    {
      v7 = 0;
      v6 = viewModel;
    }

    subtitle1Style = [v6 subtitle1Style];
    [viewModel actionStyle];
    [viewModel useBlankActionSeparator];
    [viewModel showBadge];
    v9 = self->_subtitle1TextView;
    labelColor = [(PXPhotosGlobalFooterView *)self labelColor];
    _ConfigureSubtitleTextView(v9, subtitle1, v7, labelColor, 0, subtitle1Style);
  }

  [(UITextView *)subtitle1TextView setHidden:1];
}

- (void)_updateFilterView
{
  [(UIView *)self->_filterView removeFromSuperview];
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  filterView = [viewModel filterView];
  filterView = self->_filterView;
  self->_filterView = filterView;

  if (self->_filterView)
  {
    viewModel2 = [(PXPhotosGlobalFooterView *)self viewModel];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v8 = [viewModel2 adjustedChromeColor:secondaryLabelColor];

    [(UIView *)self->_filterView setCaptionColor:v8];
    [(PXPhotosGlobalFooterView *)self addSubview:self->_filterView];
  }
}

- (void)_updateInternalMessageSubtitle
{
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  internalMessageSubtitle = [viewModel internalMessageSubtitle];

  v4 = [internalMessageSubtitle length];
  internalMessageSubtitleLabel = self->_internalMessageSubtitleLabel;
  if (v4)
  {
    if ([(UILabel *)internalMessageSubtitleLabel isHidden])
    {
      [(UILabel *)self->_internalMessageSubtitleLabel setHidden:0];
    }

    [(UILabel *)self->_internalMessageSubtitleLabel setText:internalMessageSubtitle];
  }

  else
  {
    [(UILabel *)internalMessageSubtitleLabel setHidden:1];
  }
}

- (void)_updateExtendedTitle
{
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  extendedTitle = [viewModel extendedTitle];
  extendedTitleLabel = self->_extendedTitleLabel;
  if (extendedTitle)
  {
    if ([(UILabel *)extendedTitleLabel isHidden])
    {
      [(UILabel *)self->_extendedTitleLabel setHidden:0];
    }

    [(PXPhotosGlobalFooterView *)self _configurePhotoCollectionGlobalFooterExtendedTitleLabel:self->_extendedTitleLabel];
    extendedSystemImageName = [viewModel extendedSystemImageName];
    if (extendedSystemImageName)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v7 = MEMORY[0x1E69DCAD8];
      font = [(UILabel *)self->_extendedTitleLabel font];
      v9 = [v7 configurationWithFont:font];

      v10 = MEMORY[0x1E69DCAD8];
      labelColor = [(PXPhotosGlobalFooterView *)self labelColor];
      v12 = [v10 configurationWithHierarchicalColor:labelColor];
      v13 = [v9 configurationByApplyingConfiguration:v12];

      v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:extendedSystemImageName withConfiguration:v13];
      [v6 setImage:v14];

      v15 = objc_alloc_init(MEMORY[0x1E696AD40]);
      v16 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v6];
      [v15 appendAttributedString:v16];

      v17 = objc_alloc(MEMORY[0x1E696AAB0]);
      v18 = [@" " stringByAppendingString:extendedTitle];
      v19 = [v17 initWithString:v18];
      [v15 appendAttributedString:v19];

      v20 = [v15 copy];
      v21 = 0;
    }

    else
    {
      v21 = extendedTitle;
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
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  title = [viewModel title];

  titleLabel = self->_titleLabel;
  if (title)
  {
    if ([(UILabel *)titleLabel isHidden])
    {
      [(UILabel *)self->_titleLabel setHidden:0];
    }

    [(UILabel *)self->_titleLabel setText:title];
    [(PXPhotosGlobalFooterView *)self _configurePhotoCollectionGlobalFooterTitleLabel:self->_titleLabel];
  }

  else
  {
    [(UILabel *)titleLabel setHidden:1];
  }
}

- (void)_animatedIconCrossedGridCycleBoundary
{
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  [viewModel footerAnimationCrossedGridCycleBoundary];
}

- (void)_updateAnimatedIcon
{
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  animatedIconMode = [viewModel animatedIconMode];

  v5 = animatedIconMode != 0;
  if (animatedIconMode)
  {
    if (!self->_animatedIconView)
    {
      v6 = objc_alloc_init(PXFooterAnimatedIconView);
      animatedIconView = self->_animatedIconView;
      self->_animatedIconView = v6;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel__animatedIconCrossedGridCycleBoundary name:@"PXFooterAnimatedIconViewCrossedGridCycleBoundaryNotificationName" object:self->_animatedIconView];

      needsWorkaroundFor53118165 = [(PXPhotosGlobalFooterView *)self needsWorkaroundFor53118165];
      v10 = self->_animatedIconView;
      if (needsWorkaroundFor53118165)
      {
        [(PXPhotosGlobalFooterView *)self insertSubview:v10 aboveSubview:self->_backgroundView];
      }

      else
      {
        [(PXPhotosGlobalFooterView *)self insertSubview:v10 atIndex:0];
      }
    }

    self->_hasAnimatedIconView = v5;
    isHidden = [(PXPhotosGlobalFooterView *)self isHidden];
  }

  else
  {
    self->_hasAnimatedIconView = v5;
    isHidden = 1;
  }

  [(PXFooterAnimatedIconView *)self->_animatedIconView setHidden:isHidden];
  v12 = self->_animatedIconView;

  [(PXFooterAnimatedIconView *)v12 setDesiredMode:animatedIconMode];
}

- (void)_updateProcessingView
{
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];
  isProcessing = [viewModel isProcessing];

  processingView = self->_processingView;
  if (isProcessing)
  {
    if (!processingView)
    {
      viewModel2 = [(PXPhotosGlobalFooterView *)self viewModel];
      v7 = [PXLemonadeFeatureAvailabilityProcessingViewFactory makeProcessingViewWithFooterViewModel:viewModel2];
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
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  viewModel = [(PXPhotosGlobalFooterView *)self viewModel];

  if (viewModel)
  {
    viewModel2 = [(PXPhotosGlobalFooterView *)self viewModel];
    v5 = [viewModel2 adjustedChromeColor:labelColor];

    v6 = v5;
  }

  else
  {
    v6 = labelColor;
  }

  v8 = v6;
  [(PXPhotosGlobalFooterView *)self setLabelColor:v6];
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = PXPhotosGlobalFooterView;
  [(PXPhotosGlobalFooterView *)&v4 setHidden:hidden];
  [(PXPhotosGlobalFooterView *)self _updateAnimatedIcon];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->photosGlobalFooterViewDidChangeHeight = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->photosGlobalFooterViewDidMoveToWindow = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXFooterViewModel *)viewModel unregisterChangeObserver:self context:PXPhotosGlobalFooterViewViewModelObservationContext];
    objc_storeStrong(&self->_viewModel, model);
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
    modelCopy = v7;
  }
}

- (PXPhotosGlobalFooterView)initWithFrame:(CGRect)frame needsWorkaroundFor53118165:(BOOL)for53118165
{
  v26.receiver = self;
  v26.super_class = PXPhotosGlobalFooterView;
  v5 = [(PXPhotosGlobalFooterView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    if (for53118165)
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
    labelColor = [(PXPhotosGlobalFooterView *)v6 labelColor];
    _ConfigurePhotoCollectionGlobalFooterSubtitleTextView(v23, 0, labelColor);
  }

  return 0;
}

@end