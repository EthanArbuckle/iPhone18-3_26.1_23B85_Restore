@interface SearchUIMapPlaceCardSectionView
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (id)setupContentView;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)didMoveToWindow;
- (void)placeViewControllerDidUpdateHeight:(id)height;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTintColorProvider;
@end

@implementation SearchUIMapPlaceCardSectionView

- (id)setupContentView
{
  [(SearchUIMapPlaceCardSectionView *)self updateTintColorProvider];
  [(SearchUIMapPlaceCardSectionView *)self setDelegate:self];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  v5 = [SearchUIMapsViewController alloc];
  mapsData = [cardSection mapsData];
  shouldSearchDirectionsAlongCurrentRoute = [cardSection shouldSearchDirectionsAlongCurrentRoute];
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  rowModel2 = [(SearchUICardSectionView *)self rowModel];
  v10 = -[SearchUIMapsViewController initWithMapsData:searchAlongTheRoute:feedbackListener:queryId:](v5, "initWithMapsData:searchAlongTheRoute:feedbackListener:queryId:", mapsData, shouldSearchDirectionsAlongCurrentRoute, feedbackDelegate, [rowModel2 queryId]);

  [(MUPlaceViewController *)v10 setPlaceViewControllerDelegate:self];
  [(MUPlaceViewController *)v10 setScrollEnabled:0];
  [(SearchUIMapPlaceCardSectionView *)self setMapViewController:v10];
  view = [(SearchUIMapsViewController *)v10 view];
  [view setBackgroundColor:0];

  view2 = [(SearchUIMapsViewController *)v10 view];

  return view2;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUIMapPlaceCardSectionView;
  [(SearchUIMapPlaceCardSectionView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUIMapPlaceCardSectionView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUIMapPlaceCardSectionView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUIMapPlaceCardSectionView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIMapPlaceCardSectionView;
  [(SearchUIMapPlaceCardSectionView *)&v3 didMoveToWindow];
  [(SearchUIMapPlaceCardSectionView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v4.receiver = self;
  v4.super_class = SearchUIMapPlaceCardSectionView;
  [(SearchUIMapPlaceCardSectionView *)&v4 tlk_updateForAppearance:appearance];
  [(SearchUIMapPlaceCardSectionView *)self updateTintColorProvider];
}

- (void)updateTintColorProvider
{
  v2 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
  v3 = MEMORY[0x1E69AE118];
  if ([v2 isVibrant])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __58__SearchUIMapPlaceCardSectionView_updateTintColorProvider__block_invoke;
    v4[3] = &unk_1E85B33E8;
    v5 = v2;
    [v3 setTintColorProvider:v4];
  }

  else
  {
    [v3 setTintColorProvider:0];
  }
}

id __58__SearchUIMapPlaceCardSectionView_updateTintColorProvider__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDark])
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v1 = ;

  return v1;
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  v5.receiver = self;
  v5.super_class = SearchUIMapPlaceCardSectionView;
  [(SearchUICardSectionView *)&v5 containerView:view willMeasureArrangedSubviewsFittingSize:reason forReason:size.width, size.height];
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  width = size.width;
  subviewCopy = subview;
  contentView = [(SearchUICardSectionView *)self contentView];

  if (contentView == subviewCopy)
  {
    mapViewController = [(SearchUIMapPlaceCardSectionView *)self mapViewController];
    LODWORD(v14) = 1148846080;
    LODWORD(v15) = 1112014848;
    [mapViewController _systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v14, v15}];
    v9 = v16;
    v10 = v17;

    if (v10 == 0.0)
    {
      if (+[SearchUIUtilities isIpad])
      {
        v10 = 0.1;
      }

      else
      {
        tlks_screen = [(SearchUIMapPlaceCardSectionView *)self tlks_screen];
        [tlks_screen bounds];
        v10 = v19;
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x1E698B708];
    v10 = *(MEMORY[0x1E698B708] + 8);
  }

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)placeViewControllerDidUpdateHeight:(id)height
{
  if (![(SearchUIMapPlaceCardSectionView *)self alreadyDispatchedOnMainQueue])
  {
    [(SearchUIMapPlaceCardSectionView *)self setAlreadyDispatchedOnMainQueue:1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__SearchUIMapPlaceCardSectionView_placeViewControllerDidUpdateHeight___block_invoke;
    block[3] = &unk_1E85B24C8;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __70__SearchUIMapPlaceCardSectionView_placeViewControllerDidUpdateHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 invalidateIntrinsicContentSize];

  [*(a1 + 32) didInvalidateSizeAnimate:0];
  v3 = *(a1 + 32);

  return [v3 setAlreadyDispatchedOnMainQueue:0];
}

@end