@interface PXCMMPosterUIView
- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)dateString;
- (NSString)locationString;
- (NSString)statusString;
- (PXCMMPosterUIView)initWithFrame:(CGRect)frame;
- (id)_fontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits;
- (void)_updateBannerActionButton;
- (void)_updateBannerTitles;
- (void)_updateBannerView;
- (void)_updateCorners;
- (void)layoutSubviews;
- (void)setActionButtonWithType:(int64_t)type actionBlock:(id)block;
- (void)setActionInProgress:(BOOL)progress;
- (void)setAsset:(id)asset mediaProvider:(id)provider;
- (void)setBannerHeadline:(id)headline boldRange:(_NSRange)range;
- (void)setBannerSubheadline:(id)subheadline;
- (void)setCornerRadius:(double)radius;
- (void)setCornersToRound:(unint64_t)round;
- (void)setDateString:(id)string;
- (void)setLocationString:(id)string;
- (void)setNeedsBannerView:(BOOL)view;
- (void)setOpaqueAncestorBackgroundColor:(id)color;
- (void)setSelectedCount:(int64_t)count;
- (void)setStatusString:(id)string;
- (void)setTotalCount:(int64_t)count;
- (void)willMoveToWindow:(id)window;
@end

@implementation PXCMMPosterUIView

- (id)_fontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits
{
  v4 = *&traits;
  styleCopy = style;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v7 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v7];
    v9 = v8;
    if (v4)
    {
      v10 = [v8 fontDescriptorWithSymbolicTraits:{objc_msgSend(v8, "symbolicTraits") | v4}];

      v9 = v10;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:styleCopy addingSymbolicTraits:v4 options:2];
  }

  return v9;
}

- (void)_updateCorners
{
  [(PXCMMPosterUIView *)self cornerRadius];
  v4 = v3;
  cornersToRound = [(PXCMMPosterUIView *)self cornersToRound];
  roundedCornerOverlayView = self->_roundedCornerOverlayView;
  if (v4 <= 0.0 || cornersToRound == 0)
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
    v12[6] = cornersToRound;
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

- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames
{
  [(PXUpdater *)self->_updater updateIfNeeded];
  traitCollection = [(PXCMMPosterUIView *)self traitCollection];
  [traitCollection displayScale];

  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = width;
  v11.size.height = 1.79769313e308;
  Width = CGRectGetWidth(v11);
  window = [(PXCMMPosterUIView *)self window];
  screen = [window screen];
  [PXPhotosDetailsHeaderTileWidget preferredHeaderContentHeightForWidth:screen screen:Width];

  PXSizeRoundToPixel();
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = PXCMMPosterUIView;
  [(PXCMMPosterUIView *)&v5 willMoveToWindow:?];
  if (window)
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXCMMPosterUIView *)self _performLayoutInWidth:0 updateSubviewFrames:fits.width, fits.height];
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
  selectedCount = [(PXCMMPosterUIView *)self selectedCount];
  v4 = _Block_copy(self->_actionButtonAction);
  v5 = v4;
  actionButtonType = self->_actionButtonType;
  if (actionButtonType == 2)
  {
    v10 = v4;
    v7 = PXLocalizedStringFromTable(@"PXCMMSaveButtonTitle", @"PhotosUICore");
    if (selectedCount >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (actionButtonType == 1)
  {
    v10 = v4;
    v7 = PXLocalizedStringFromTable(@"PXCMMNextButtonTitle", @"PhotosUICore");
    if (selectedCount > 0)
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

- (void)setActionInProgress:(BOOL)progress
{
  if (self->_actionInProgress != progress)
  {
    self->_actionInProgress = progress;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerActionButton];
  }
}

- (void)setActionButtonWithType:(int64_t)type actionBlock:(id)block
{
  self->_actionButtonType = type;
  v5 = [block copy];
  actionButtonAction = self->_actionButtonAction;
  self->_actionButtonAction = v5;

  updater = self->_updater;

  [(PXUpdater *)updater setNeedsUpdateOf:sel__updateBannerActionButton];
}

- (void)setNeedsBannerView:(BOOL)view
{
  if (self->_needsBannerView != view)
  {
    self->_needsBannerView = view;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerView];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateCorners];
  }
}

- (void)setCornersToRound:(unint64_t)round
{
  if (self->_cornersToRound != round)
  {
    self->_cornersToRound = round;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateCorners];
  }
}

- (void)setOpaqueAncestorBackgroundColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPosterUIView.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"opaqueAncestorBackgroundColor"}];
  }

  opaqueAncestorBackgroundColor = self->_opaqueAncestorBackgroundColor;
  if (opaqueAncestorBackgroundColor != colorCopy && ([(UIColor *)opaqueAncestorBackgroundColor isEqual:colorCopy]& 1) == 0)
  {
    v7 = [(UIColor *)colorCopy copy];
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

- (void)setSelectedCount:(int64_t)count
{
  if (self->_selectedCount != count)
  {
    self->_selectedCount = count;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerTitles];
    updater = self->_updater;

    [(PXUpdater *)updater setNeedsUpdateOf:sel__updateBannerActionButton];
  }
}

- (void)setTotalCount:(int64_t)count
{
  if (self->_totalCount != count)
  {
    self->_totalCount = count;
  }
}

- (void)setBannerSubheadline:(id)subheadline
{
  subheadlineCopy = subheadline;
  bannerSubheadline = self->_bannerSubheadline;
  if (bannerSubheadline != subheadlineCopy)
  {
    v9 = subheadlineCopy;
    v6 = [(NSString *)bannerSubheadline isEqualToString:subheadlineCopy];
    subheadlineCopy = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_bannerSubheadline;
      self->_bannerSubheadline = v7;

      [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerTitles];
      subheadlineCopy = v9;
    }
  }
}

- (void)setBannerHeadline:(id)headline boldRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  headlineCopy = headline;
  bannerHeadline = self->_bannerHeadline;
  v13 = headlineCopy;
  if (bannerHeadline != headlineCopy && (v9 = [(NSString *)bannerHeadline isEqualToString:headlineCopy], headlineCopy = v13, !v9) || (self->_bannerHeadlineBoldRange.location == location ? (v10 = self->_bannerHeadlineBoldRange.length == length) : (v10 = 0), !v10))
  {
    v11 = [(NSString *)headlineCopy copy];
    v12 = self->_bannerHeadline;
    self->_bannerHeadline = v11;

    self->_bannerHeadlineBoldRange.location = location;
    self->_bannerHeadlineBoldRange.length = length;
    [(PXUpdater *)self->_updater setNeedsUpdateOf:sel__updateBannerTitles];
    headlineCopy = v13;
  }
}

- (void)setAsset:(id)asset mediaProvider:(id)provider
{
  assetCopy = asset;
  providerCopy = provider;
  viewModel = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__PXCMMPosterUIView_setAsset_mediaProvider___block_invoke;
  v11[3] = &unk_1E77361F8;
  v12 = assetCopy;
  v13 = providerCopy;
  v9 = providerCopy;
  v10 = assetCopy;
  [viewModel performChanges:v11];
}

void __44__PXCMMPosterUIView_setAsset_mediaProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAsset:v3];
  [v4 setMediaProvider:*(a1 + 40)];
}

- (void)setStatusString:(id)string
{
  stringCopy = string;
  viewModel = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PXCMMPosterUIView_setStatusString___block_invoke;
  v7[3] = &unk_1E77361D0;
  v8 = stringCopy;
  v6 = stringCopy;
  [viewModel performChanges:v7];
}

- (NSString)statusString
{
  viewModel = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  statusString = [viewModel statusString];

  return statusString;
}

- (void)setDateString:(id)string
{
  stringCopy = string;
  viewModel = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__PXCMMPosterUIView_setDateString___block_invoke;
  v7[3] = &unk_1E77361D0;
  v8 = stringCopy;
  v6 = stringCopy;
  [viewModel performChanges:v7];
}

- (NSString)dateString
{
  viewModel = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  subtitle = [viewModel subtitle];

  return subtitle;
}

- (void)setLocationString:(id)string
{
  stringCopy = string;
  viewModel = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PXCMMPosterUIView_setLocationString___block_invoke;
  v7[3] = &unk_1E77361D0;
  v8 = stringCopy;
  v6 = stringCopy;
  [viewModel performChanges:v7];
}

- (NSString)locationString
{
  viewModel = [(PXCMMPosterHeaderView *)self->_headerView viewModel];
  title = [viewModel title];

  return title;
}

- (PXCMMPosterUIView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = PXCMMPosterUIView;
  v3 = [(PXCMMPosterUIView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [v3 setBackgroundColor:systemBackgroundColor];

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