@interface SearchUIMovieCardSectionUpNextButtonView
- (id)initIsInUpNext:(BOOL)next cardSectionView:(id)view;
- (void)buttonPressed;
- (void)updateUpNextStatus;
@end

@implementation SearchUIMovieCardSectionUpNextButtonView

- (id)initIsInUpNext:(BOOL)next cardSectionView:(id)view
{
  nextCopy = next;
  v12.receiver = self;
  v12.super_class = SearchUIMovieCardSectionUpNextButtonView;
  v5 = [(SearchUIMovieCardSectionBuyButtonView *)&v12 initWithTitle:0 subtitle:0 punchout:0 cardSectionView:view];
  if (v5)
  {
    v6 = [SearchUIWatchListState alloc];
    cardSectionView = [(SearchUIMovieCardSectionBuyButtonView *)v5 cardSectionView];
    section = [cardSectionView section];
    watchListIdentifier = [section watchListIdentifier];
    v10 = [(SearchUIWatchListState *)v6 initWithIdentifier:watchListIdentifier watchListed:nextCopy];
    [(SearchUIMovieCardSectionUpNextButtonView *)v5 setWatchListState:v10];

    [(SearchUIMovieCardSectionUpNextButtonView *)v5 updateUpNextStatus];
  }

  return v5;
}

- (void)updateUpNextStatus
{
  watchListState = [(SearchUIMovieCardSectionUpNextButtonView *)self watchListState];
  isWatchListed = [watchListState isWatchListed];

  if (isWatchListed)
  {
    v5 = @"IN_UP_NEXT_BUTTON_SUBTITLE";
  }

  else
  {
    v5 = @"ADD_TO_UP_NEXT_BUTTON_SUBTITLE";
  }

  if (isWatchListed)
  {
    v6 = @"checkmark";
  }

  else
  {
    v6 = @"plus";
  }

  v7 = [SearchUIUtilities localizedStringForKey:v5];
  subtitleLabel = [(SearchUIMovieCardSectionBuyButtonView *)self subtitleLabel];
  [subtitleLabel setText:v7];

  button = [(SearchUIMovieCardSectionBuyButtonView *)self button];
  [button setUserInteractionEnabled:1];

  button2 = [(SearchUIMovieCardSectionBuyButtonView *)self button];
  [button2 setSymbolImageName:v6];
}

- (void)buttonPressed
{
  v6.receiver = self;
  v6.super_class = SearchUIMovieCardSectionUpNextButtonView;
  [(SearchUIMovieCardSectionBuyButtonView *)&v6 buttonPressed];
  button = [(SearchUIMovieCardSectionBuyButtonView *)self button];
  [button setUserInteractionEnabled:0];

  watchListState = [(SearchUIMovieCardSectionUpNextButtonView *)self watchListState];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__SearchUIMovieCardSectionUpNextButtonView_buttonPressed__block_invoke;
  v5[3] = &unk_1E85B24C8;
  v5[4] = self;
  [watchListState toggleStateWithCompletion:v5];
}

@end