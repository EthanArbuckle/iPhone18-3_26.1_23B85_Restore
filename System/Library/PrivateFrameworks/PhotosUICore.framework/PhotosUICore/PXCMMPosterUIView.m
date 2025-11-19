@interface PXCMMPosterUIView
- (CGSize)_performLayoutInWidth:(double)a3 updateSubviewFrames:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)dateString;
- (NSString)locationString;
- (NSString)statusString;
- (PXCMMPosterUIView)initWithFrame:(CGRect)a3;
- (id)_fontDescriptorWithTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4;
- (void)_updateBannerActionButton;
- (void)_updateBannerTitles;
- (void)_updateBannerView;
- (void)_updateCorners;
- (void)layoutSubviews;
- (void)setActionButtonWithType:(int64_t)a3 actionBlock:(id)a4;
- (void)setActionInProgress:(BOOL)a3;
- (void)setAsset:(id)a3 mediaProvider:(id)a4;
- (void)setBannerHeadline:(id)a3 boldRange:(_NSRange)a4;
- (void)setBannerSubheadline:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setCornersToRound:(unint64_t)a3;
- (void)setDateString:(id)a3;
- (void)setLocationString:(id)a3;
- (void)setNeedsBannerView:(BOOL)a3;
- (void)setOpaqueAncestorBackgroundColor:(id)a3;
- (void)setSelectedCount:(int64_t)a3;
- (void)setStatusString:(id)a3;
- (void)setTotalCount:(int64_t)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation PXCMMPosterUIView

- (id)_fontDescriptorWithTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v6))
  {
    v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v6];
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:v7];
    v9 = v8;
    if (v4)
    {
      v10 = [v8 fontDescriptorWithSymbolicTraits:{objc_msgSend(v8, "symbolicTraits") | v4}];

      v9 = v10;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:v4 options:2];
  }

  return v9;
}

- (void)_updateCorners
{
  [(PXCMMPosterUIView *)self cornerRadius];
  v4 = v3;
  v5 = [(PXCMMPosterUIView *)self cornersToRound];
  roundedCornerOverlayView = self->_roundedCornerOverlayView;
  if (v4 <= 0.0 || v5 == 0)
  {
    [(PXRoundedCornerOverlayView *)roundedCornerOverlayView removeFromSuperview];
    v8 = self->_roundedCornerOverlayView;
    self->_roundedCornerOverlayView = 0;
  }

  else
  {
    if (!roundedCornerOverlayView)
    {
      v9 = [PXRoundedCornerOverlayView alloc];
      [(PXCMMPosterUIView *)self bounds];
      v10 = [(PXRoundedCornerOverlayView *)v9 initWithFrame:?];
      v11 = self->_roundedCornerOverlayView;
      self->_roundedCornerOverlayView = v10;

      [(PXCMMPosterUIView *)self addSubview:self->_roundedCornerOverlayView];
      roundedCornerOverlayView = self->_roundedCornerOverlayView;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__PXCMMPosterUIView__updateCorners__block_invoke;
    v12[3] = &unk_1E7736220;
    *&v12[5] = v4;
    v12[4] = self;
    v12[6] = v5;
    [(PXRoundedCornerOverlayView *)roundedCornerOverlayView performChanges:v12];
  }
}

void __35__PXCMMPosterUIView__updateCorners__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v5 = a2;
  [v5 setCornerRadius:v3];
  [v5 setOverlayColor:*(*(a1 + 32) + 504)];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v4];

  [*(a1 + 32) px_screenScale];
  [v5 setDisplayScale:?];
  [v5 setCornersToRound:*(a1 + 48)];
}

- (CGSize)_performLayoutInWidth:(double)a3 updateSubviewFrames:(BOOL)a4
{
  [(PXUpdater *)self->_updater updateIfNeeded];
  v6 = [(PXCMMPosterUIView *)self traitCollection];
  [v6 displayScale];

  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = a3;
  v11.size.height = 1.79769313e308;
  Width = CGRectGetWidth(v11);
  v8 = [(PXCMMPosterUIView *)self window];
  v9 = [v8 screen];
  [PXPhotosDetailsHeaderTileWidget preferredHeaderContentHeightForWidth:v9 screen:Width];

  PXSizeRoundToPixel();
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = PXCMMPosterUIView;
  [(PXCMMPosterUIView *)&v5 willMoveToWindow:?];
  if (a3)
  {
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerActionButton];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCMMPosterUIView;
  [(PXCMMPosterUIView *)&v4 layoutSubviews];
  [(PXCMMPosterUIView *)self bounds];
  [(PXCMMPosterUIView *)self _performLayoutInWidth:1 updateSubviewFrames:v3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXCMMPosterUIView *)self _performLayoutInWidth:0 updateSubviewFrames:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateBannerView
{
  bannerView = self->_bannerView;
  if (self->_needsBannerView)
  {
    if (!bannerView)
    {
      v4 = [PXCMMPosterBannerView alloc];
      v5 = [(PXCMMPosterBannerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v6 = self->_bannerView;
      self->_bannerView = v5;

      v7 = self->_bannerView;
      headerView = self->_headerView;

      [(PXCMMPosterUIView *)self insertSubview:v7 aboveSubview:headerView];
    }
  }

  else if (bannerView)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__PXCMMPosterUIView__updateBannerView__block_invoke;
    v10[3] = &unk_1E774C648;
    v10[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__PXCMMPosterUIView__updateBannerView__block_invoke_2;
    v9[3] = &unk_1E774B308;
    v9[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v9 completion:0.25];
  }
}

uint64_t __38__PXCMMPosterUIView__updateBannerView__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 440) frame];
  v2 = *(*(a1 + 32) + 440);

  return [v2 setFrame:?];
}

void __38__PXCMMPosterUIView__updateBannerView__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 440) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 440);
  *(v2 + 440) = 0;
}

- (void)_updateBannerActionButton
{
  v3 = [(PXCMMPosterUIView *)self selectedCount];
  v4 = _Block_copy(self->_actionButtonAction);
  v5 = v4;
  actionButtonType = self->_actionButtonType;
  if (actionButtonType == 2)
  {
    v10 = v4;
    v7 = PXLocalizedStringFromTable(@"PXCMMSaveButtonTitle", @"PhotosUICore");
    if (v3 >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (actionButtonType == 1)
  {
    v10 = v4;
    v7 = PXLocalizedStringFromTable(@"PXCMMNextButtonTitle", @"PhotosUICore");
    if (v3 > 0)
    {
LABEL_4:
      actionButtonAction = self->_actionButtonAction;
LABEL_7:
      v9 = _Block_copy(actionButtonAction);

      v5 = v9;
      goto LABEL_9;
    }

LABEL_6:
    actionButtonAction = 0;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:
  v11 = v5;
  [(PXCMMPosterBannerView *)self->_bannerView setActionButtonWithTitle:v7 actionBlock:v5];
}

- (void)_updateBannerTitles
{
  [(PXCMMPosterBannerView *)self->_bannerView setHeadline:self->_bannerHeadline boldRange:self->_bannerHeadlineBoldRange.location, self->_bannerHeadlineBoldRange.length];
  bannerSubheadline = self->_bannerSubheadline;
  bannerView = self->_bannerView;

  [(PXCMMPosterBannerView *)bannerView setSubheadline:bannerSubheadline];
}

- (void)setActionInProgress:(BOOL)a3
{
  if (self->_actionInProgress != a3)
  {
    self->_actionInProgress = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerActionButton];
  }
}

- (void)setActionButtonWithType:(int64_t)a3 actionBlock:(id)a4
{
  self->_actionButtonType = a3;
  v5 = [a4 copy];
  actionButtonAction = self->_actionButtonAction;
  self->_actionButtonAction = v5;

  updater = self->_updater;

  [(PXUpdater *)updater setNeedsUpdateOf:sel__updateBannerActionButton];
}

- (void)setNeedsBannerView:(BOOL)a3
{
  if (self->_needsBannerView != a3)
  {
    self->_needsBannerView = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerView];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateCorners];
  }
}

- (void)setCornersToRound:(unint64_t)a3
{
  if (self->_cornersToRound != a3)
  {
    self->_cornersToRound = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateCorners];
  }
}

- (void)setOpaqueAncestorBackgroundColor:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMPosterUIView.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"opaqueAncestorBackgroundColor"}];
  }

  opaqueAncestorBackgroundColor = self->_opaqueAncestorBackgroundColor;
  if (opaqueAncestorBackgroundColor != v5 && ([(UIColor *)opaqueAncestorBackgroundColor isEqual:v5]& 1) == 0)
  {
    v7 = [(UIColor *)v5 copy];
    v8 = self->_opaqueAncestorBackgroundColor;
    self->_opaqueAncestorBackgroundColor = v7;

    roundedCornerOverlayView = self->_roundedCornerOverlayView;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PXCMMPosterUIView_setOpaqueAncestorBackgroundColor___block_invoke;
    v11[3] = &unk_1E7736BA0;
    v11[4] = self;
    [(PXRoundedCornerOverlayView *)roundedCornerOverlayView performChanges:v11];
  }
}

- (void)setSelectedCount:(int64_t)a3
{
  if (self->_selectedCount != a3)
  {
    self->_selectedCount = a3;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerTitles];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateBannerActionButton];
  }
}

- (void)setTotalCount:(int64_t)a3
{
  if (self->_totalCount != a3)
  {
    self->_totalCount = a3;
  }
}

- (void)setBannerSubheadline:(id)a3
{
  v4 = a3;
  bannerSubheadline = self->_bannerSubheadline;
  if (bannerSubheadline != v4)
  {
    v9 = v4;
    v6 = [(NSString *)bannerSubheadline isEqualToString:v4];
    v4 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_bannerSubheadline;
      self->_bannerSubheadline = v7;

      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerTitles];
      v4 = v9;
    }
  }
}

- (void)setBannerHeadline:(id)a3 boldRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  bannerHeadline = self->_bannerHeadline;
  v13 = v7;
  if (bannerHeadline != v7 && (v9 = [(NSString *)bannerHeadline isEqualToString:v7], v7 = v13, !v9) || (self->_bannerHeadlineBoldRange.location == location ? (v10 = self->_bannerHeadlineBoldRange.length == length) : (v10 = 0), !v10))
  {
    v11 = [(NSString *)v7 copy];
    v12 = self->_bannerHeadline;
    self->_bannerHeadline = v11;

    self->_bannerHeadlineBoldRange.location = location;
    self->_bannerHeadlineBoldRange.length = length;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerTitles];
    v7 = v13;
  }
}

- (void)setAsset:(id)a3 mediaProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__PXCMMPosterUIView_setAsset_mediaProvider___block_invoke;
  v11[3] = &unk_1E77361F8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performChanges:v11];
}

void __44__PXCMMPosterUIView_setAsset_mediaProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAsset:v3];
  [v4 setMediaProvider:*(a1 + 40)];
}

- (void)setStatusString:(id)a3
{
  v4 = a3;
  v5 = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PXCMMPosterUIView_setStatusString___block_invoke;
  v7[3] = &unk_1E77361D0;
  v8 = v4;
  v6 = v4;
  [v5 performChanges:v7];
}

- (NSString)statusString
{
  v2 = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v3 = [v2 statusString];

  return v3;
}

- (void)setDateString:(id)a3
{
  v4 = a3;
  v5 = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__PXCMMPosterUIView_setDateString___block_invoke;
  v7[3] = &unk_1E77361D0;
  v8 = v4;
  v6 = v4;
  [v5 performChanges:v7];
}

- (NSString)dateString
{
  v2 = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v3 = [v2 subtitle];

  return v3;
}

- (void)setLocationString:(id)a3
{
  v4 = a3;
  v5 = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PXCMMPosterUIView_setLocationString___block_invoke;
  v7[3] = &unk_1E77361D0;
  v8 = v4;
  v6 = v4;
  [v5 performChanges:v7];
}

- (NSString)locationString
{
  v2 = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v3 = [v2 title];

  return v3;
}

- (PXCMMPosterUIView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PXCMMPosterUIView;
  v3 = [(PXCMMPosterUIView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v3 setBackgroundColor:v4];

    *(v3 + 408) = xmmword_1A5380D90;
    *(v3 + 64) = -1;
    v5 = [[PXCMMPosterHeaderView alloc] initWithPresentationStyle:0];
    v6 = *(v3 + 54);
    *(v3 + 54) = v5;

    [v3 addSubview:*(v3 + 54)];
    v3[480] = 1;
    v7 = [PXCMMPosterBannerView alloc];
    v8 = [(PXCMMPosterBannerView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v9 = *(v3 + 55);
    *(v3 + 55) = v8;

    [v3 addSubview:*(v3 + 55)];
    *(v3 + 56) = 0;
    v10 = [[off_1E7721940 alloc] initWithTarget:v3];
    v11 = *(v3 + 59);
    *(v3 + 59) = v10;

    [*(v3 + 59) setNeedsUpdateSelector:sel_setNeedsLayout];
    [*(v3 + 59) addUpdateSelector:sel__updateBannerView];
    [*(v3 + 59) addUpdateSelector:sel__updateBannerTitles];
    [*(v3 + 59) addUpdateSelector:sel__updateBannerActionButton];
    [*(v3 + 59) addUpdateSelector:sel__updateCorners];
    [*(v3 + 59) setNeedsUpdateOf:sel__updateBannerActionButton];
  }

  return v3;
}

@end